import boto3
import logging

# Initialize logger
logger = logging.getLogger()
logger.setLevel(logging.INFO)

ec2 = boto3.client('ec2')

def get_active_instance_ids():
    response = ec2.describe_instances(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
    return {instance['InstanceId'] for reservation in response['Reservations'] for instance in reservation['Instances']}

def delete_snapshot_if_orphan(snapshot_id, volume_id, active_instance_ids):
    if not volume_id:
        ec2.delete_snapshot(SnapshotId=snapshot_id)
        logger.info(f"Deleted EBS snapshot {snapshot_id} as it was not attached to any volume.")
    else:
        try:
            volume_response = ec2.describe_volumes(VolumeIds=[volume_id])
            if not any(attachment['InstanceId'] in active_instance_ids for attachment in volume_response['Volumes'][0]['Attachments']):
                ec2.delete_snapshot(SnapshotId=snapshot_id)
                logger.info(f"Deleted EBS snapshot {snapshot_id} as it was taken from a volume not attached to any running instance.")
        except ec2.exceptions.ClientError as e:
            if e.response['Error']['Code'] == 'InvalidVolume.NotFound':
                ec2.delete_snapshot(SnapshotId=snapshot_id)
                logger.info(f"Deleted EBS snapshot {snapshot_id} as its associated volume was not found.")

def lambda_handler(event, context):
    active_instance_ids = get_active_instance_ids()

    snapshots_response = ec2.describe_snapshots(OwnerIds=['self'])
    for snapshot in snapshots_response['Snapshots']:
        delete_snapshot_if_orphan(snapshot['SnapshotId'], snapshot.get('VolumeId'), active_instance_ids)
