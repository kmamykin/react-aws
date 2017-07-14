# Deploy React apps to AWS heroku style

This project provides a AWS CloudFormation template to simply deploy a static webside to AWS infrastructure.
By simple I mean accessible for people who are not experts in AWS and who may not be willing to follow through multipage tutorials.
However simple does not mean naive, and a good amount of best practices deploying and maintaining web apps 
went into this template. 

## Getting Started

What you need:

* AWS account with IAM AdministratorAccess, or at least (... figure out min deployment rights...)
* Domain name where the application will be deployed, (e.g. www.mycompany.com). Note, the Hosting Zone for the domain must exist?

You do NOT need to clone this repo, unless you are planning to contribute to it.

### 1. Deploy CloudFormation template


### 2. Add git remote

### 3. git push


## What you get

* CodeCommit
* ...

## Benefits

* No need to signup and pay for continuous integration services, CodeBuild takes care of that.
* No need to signup and pay for hosting services, CloudFront/S3 take care of that
* ? may need GitHub ? Future scope?

## What happens when you git push

### Builds 


## External articles for reference

* https://medium.com/@omgwtfmarc/deploying-create-react-app-to-s3-or-cloudfront-48dae4ce0af
* https://github.com/rbalicki2/react-aws-deployments


## Alternatively

Generate a webhook url (API Gateway/Lambda) to receive notifications from GitHub and deploy.
