# Architecture Diagram Description

The Udagram architecture consists of three main components:

1. Users access the frontend hosted on AWS S3.
2. The frontend sends HTTP requests to the backend API hosted on Elastic Beanstalk.
3. The backend reads and writes data to a PostgreSQL database hosted on AWS RDS.

This architecture allows independent scaling of frontend and backend services.
Communication between services happens over HTTP and TCP connections.
