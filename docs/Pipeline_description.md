# Pipeline Description

This project uses a CI/CD pipeline to automate the build process of the Udagram application.

## Source Control
The source code of the project is hosted on GitHub.
Each push to the main branch triggers the CircleCI pipeline automatically.

## Continuous Integration
CircleCI is used for continuous integration.
When code is pushed to the main branch, CircleCI starts a pipeline that performs the following steps:

- Install project dependencies
- Build the frontend application
- Build the backend application

The pipeline ensures that the application can be built successfully before deployment.

## Continuous Deployment
The backend application is deployed manually to AWS Elastic Beanstalk.
The frontend application is built and uploaded to an AWS S3 bucket configured for static website hosting.

CircleCI is used to validate the build process, while deployment is handled separately through AWS services.

## Secrets Management
All sensitive information such as AWS credentials and database connection details
are stored securely as environment variables.
No secrets or credentials are hard-coded in the source code.
