# Pipeline Diagram Description

The CI/CD pipeline follows these steps:

1. Developer pushes code to GitHub.
2. CircleCI detects changes in the main branch.
3. Dependencies are installed.
4. Frontend and backend are built.
5. Backend is deployed to Elastic Beanstalk.
6. Frontend files are uploaded to S3.

This pipeline ensures consistent and automated deployments.
