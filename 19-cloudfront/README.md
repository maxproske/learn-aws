# AWS CloudFront

Watch: https://www.youtube.com/watch?v=yhieOhvHz6Q&list=PLdpzxOOAlwvLNOxX0RfndiYSt1Le9azze&index=21

- **AWS CloudFront** is a managed **CDN** (Content Delivery Network) that reduces latency by creating replicas of static S3 objects at 225+ **edge locations** closer to the user.
- It reduces load and cost by caching the content and reducing the amount of data transferred from servers to the user.
- Create an S3 bucket with **Static Website Hosting** enabled and public access disabled. Upload an index.html file. Create a CloudFront **distribution** and it will-auto assign a role to the S3 bucket. Access the CloudFront URL. It will take a few minutes to propagate if you choose worldwide distribution.
- Visit S3 endpoint (Denied): https://www.mproske.com.s3-website-us-east-1.amazonaws.com
- Visit CloudFront endpoint (Allowed): https://d3e5bbdjw89vox.cloudfront.net/index.html
