# Pipeline Process Description

This project uses a CI/CD pipeline to automate build and deployment.

## Source Control
The project source code is provided through the Udacity workspace.
A CircleCI configuration file is included as part of the project requirements.

## Continuous Integration
CircleCI is used for continuous integration.
The pipeline installs dependencies and builds the frontend and backend applications.

## Continuous Deployment
After a successful build:
- The backend is deployed to AWS Elastic Beanstalk.
- The frontend build files are uploaded to AWS S3.

## Secrets Management
All sensitive values such as database credentials and AWS keys
are stored as environment variables in CircleCI.
No secrets are stored in the source code.

## Note on CI/CD Execution

CircleCI was configured using a valid config.yml file.
The project was deployed using AWS services directly without connecting a GitHub repository.
Therefore, the pipeline file was not executed through CircleCI, but its configuration is provided as required.
