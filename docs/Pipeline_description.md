# Pipeline Description

This project uses a CI/CD pipeline (CircleCI) to build and deploy the Udagram application automatically.

## Source Control
The source code is hosted on GitHub.
A push to the `main` branch triggers the CircleCI workflow (deployment is limited to `main/master` only).

## Continuous Integration (CI)
CircleCI runs a build job that:
- Installs frontend dependencies
- Runs frontend lint
- Builds the frontend (Angular/Ionic)
- Installs backend dependencies
- Builds the backend (TypeScript compile)

## Continuous Deployment (CD)
After CI succeeds, CircleCI runs a deploy job that:
1. Verifies AWS credentials
2. Sets Elastic Beanstalk environment variables using:
   `eb setenv KEY=VALUE`
3. Deploys the backend API to AWS Elastic Beanstalk
4. Uploads the frontend build artifacts to AWS S3 (static website hosting)

## Secrets Management
All sensitive values are stored in CircleCI Project Environment Variables (AWS credentials, DB credentials, JWT secret, etc.)
No secrets are hard-coded in the repository.
