#!/bin/sh
set -euo pipefail

rm -rf hugo-sample-site

github_username="${AWS_LAMBDA_FOR_THE_CONTAINERS_DEVELOPER_BLOG_GITHUB_USERNAME}"
github_token="${AWS_LAMBDA_FOR_THE_CONTAINERS_DEVELOPER_BLOG_GITHUB_TOKEN}"
git clone https://${github_username}:${github_token}@github.com/${github_username}/aws-lambda-for-the-containers-developer-blog
cd aws-lambda-for-the-containers-developer-blog/hugo_web_site
/tmp/hugo
aws s3 cp ./public/ s3://${AWS_LAMBDA_FOR_THE_CONTAINERS_DEVELOPER_BLOG_BUCKET}/ --recursive