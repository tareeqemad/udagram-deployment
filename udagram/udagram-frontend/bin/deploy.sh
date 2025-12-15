#!/usr/bin/env bash
set -euo pipefail

: "${AWS_BUCKET:?Missing AWS_BUCKET env var}"

echo "Deploying frontend to s3://${AWS_BUCKET}"


aws s3 sync ./www "s3://${AWS_BUCKET}" --delete


aws s3 cp ./www/index.html "s3://${AWS_BUCKET}/index.html" \
  --cache-control="max-age=0, no-cache, no-store, must-revalidate" \
  --content-type="text/html"
