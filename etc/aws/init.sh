#!/bin/bash

AWS_ACCESS_KEY_ID=LS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY=LS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION=LS_REGION

awslocal s3 mb s3://algashop-product-image

awslocal s3api put-bucket-cors --bucket algashop-product-image --cors-configuration file:///etc/aws/cors.json

awslocal s3api put-object \
  --bucket algashop-product-image \
  --key 1a5ac2f0-1100-4368-9ea1-1f62ebe25468.png \
  --content-type image/png \
  --body /etc/images/1a5ac2f0-1100-4368-9ea1-1f62ebe25468.png &