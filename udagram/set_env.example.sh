# Local dev ONLY (example). Do not commit real credentials.
export POSTGRES_USERNAME=postgres
export POSTGRES_PASSWORD=CHANGE_ME
export POSTGRES_HOST=YOUR_RDS_ENDPOINT
export POSTGRES_DB=postgres

export AWS_BUCKET=YOUR_S3_BUCKET
export AWS_REGION=us-east-1

# For local only (if you use ~/.aws/credentials). In CI/EB prefer IAM role or env keys.
# export AWS_PROFILE=default

export JWT_SECRET=CHANGE_ME

# For production, set this to your S3 Website endpoint (e.g. http://<bucket>.s3-website-us-east-1.amazonaws.com)
export URL=http://localhost:8100
