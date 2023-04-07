#!/bin/sh

rm -rf hugo-sample-site
git clone https://github.com/aws-containers/aws-lambda-for-the-containers-developer-blog
cd aws-lambda-for-the-containers-developer-blog/hugo_web_site
/tmp/hugo
aws s3 cp ./public/ s3://<bucket-name>/ --recursive