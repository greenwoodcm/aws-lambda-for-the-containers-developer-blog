### Introduction

This repository is a companion of the "AWS Lambda for the containers developer" blog post. 

It includes all the files required to test the workflow promoted in the blog post. In addition to having the bash scripts (`startup.sh` and `businesscode.sh`) as well as the `Dockerfile`, the repository also includes a small and basic Hugo website for test purposes (in the [](./hugo_web_site) folder). 

### Setup 

To set up the environment please do the following: 

1. create a new repository in your own GitHub account from this template repository
1. clone your repository in preferred IDE of your choosing
1. open the `businesscode.sh` file and locate the `aws s3 cp ./public/ s3://<bucket-name>/ --recursive` line 
1. replace `<bucket-name>` with your own bucket (the bucket should ideally be open for read public access and should have `Static website hosting` enabled)
(GREENWD: note that the above is moot because i put the bucket in the sam template)

### Deployment

To deploy our Lambda function we will use the `SAM CLI`. 

1. Install the SAM CLI following [these instructions](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html).
1. `cd sam`
1. `sam build`
1. `sam deploy --profile <my_aws_profile> --guided`
  1. This will prompt you for a SAM stack name and region to deploy to
  1. This will prompt you for the GitHub username and token your function will use to `git clone` the hugo repository
  1. This will prompt you to let SAM create a managed ECR repository to host the built container artifacts.  Unless you would like to provide the ECR repository yourself, accept this.
  1. This will also prompt you to leave these settings in a `samconfig.toml` file so that you don't have to go through the guided deployment each time.