### Introduction

This repository is a companion of the "AWS Lambda for the containers developer" blog post. 

It includes all the files required to test the workflow promoted in the blog post. In addition to having the bash scripts (`startup.sh` and `businesscode.sh`) as well as the `Dockerfile`, the repository also includes a small and basic Hugo website for test purposes (in the [](./hugo_web_site) folder). 

### Setup 

To set up the environment please do the following: 

- create a new repository in your own GitHub account from this template repository
- clone your repository in preferred IDE of your choosing
- open the `businesscode.sh` file and locate the `aws s3 cp ./public/ s3://<bucket-name>/ --recursive` line 
- replace `<bucket-name>` with your own bucket (the bucket should ideally be open for read public access and should have `Static website hosting` enabled)

To deploy our Lambda function we will use the `SAM CLI`. You can install it following [these instructions](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html).

#WIP 

<Chris, we need to decide whether we want to show instructions using `sam init` or if we should embed sam files in the repo for users to do sam build + sam deploy. Thoughts?> 