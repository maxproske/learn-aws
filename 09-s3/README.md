# S3

AWS S3 is one of the easiest services to use. It was the 2nd service AWS ever created.

Watch: https://www.youtube.com/watch?v=DiWWPo2Qoso&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=11

- **S3** (Simple Storage Service) is a **managed service** that provides **object storage**.
- It's a scalable, durable, highly available way to store files of any type that can be accessed via HTTPS.
- What is durable? 1 in 1 billion files over 100 years will be deleted.
- S3 creates multiple replicas of your file across minium 3 availability zones.
- **Object storage** is a way to store files. It is different from **block storage** (eg. hard drives) and **file storage** (eg. Dropbox).
- Files in S3 are called **Objects**. They are stored in buckets.
- **Buckets** are like folders. They are **globally** unique.
- There are different **storage classes** for different use cases. For example, **Standard** is for frequently accessed files, and **Glacier** is for infrequently accessed files.
- 💡 The standard retrieval time from S3 Glacier Deep Archive is usually within 12 hours
- **Versioning** is a feature that allows you to keep multiple versions of a file.
- **Lifecycle management** is a feature that allows you to move files to different storage classes based on their age.
- You can write policies to control access to buckets using the **generator**.
- It can even be used to host static websites!
