# Infrastructure Description

This project deploys the Udagram application using AWS cloud services.
The infrastructure is separated into frontend, backend, and database layers.

## Database (AWS RDS)
The database layer uses PostgreSQL hosted on AWS RDS.
It stores user credentials and post metadata.
The database is publicly accessible and secured using security groups.
The backend connects to the database using environment variables.

## Backend API (Elastic Beanstalk)
The backend is a Node.js REST API deployed using AWS Elastic Beanstalk.
Elastic Beanstalk manages the EC2 instance, load balancer, and environment configuration.
The application runs on Amazon Linux and listens on port 8080.

## Frontend (AWS S3)
The frontend is an Angular/Ionic application.
After building the frontend, the static files are uploaded to an AWS S3 bucket.
The bucket is configured for static website hosting and is publicly accessible.

## Communication Between Services
- The frontend communicates with the backend through HTTP requests.
- The backend communicates with the PostgreSQL database using Sequelize ORM.
- Environment variables are used to configure connections securely.
