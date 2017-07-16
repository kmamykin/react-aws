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




*************************

https://stelligent.com/2016/03/21/create-a-cross-account-pipeline-in-aws-cloudformation/
While not directly related to limiting access permissions, I’ve found the code fragment below to be useful when defining my CloudFormation stacks for CodePipeline. It’s a CloudFormation Output that defines the URL for CodePipeline. It’s useful as a way to quickly jump to the pipeline in CodePipeline once the CloudFormation stack is complete.
```JSON
"CodePipelineURL":{
      "Value":{
        "Fn::Join":[
          "",
          [
            "https://console.aws.amazon.com/codepipeline/home?region=",
            {
              "Ref":"AWS::Region"
            },
            "#/view/",
            {
              "Ref":"CodePipelineStack"
            }
          ]
        ]
      }
    },
```

```bash
aws cloudformation create-stack --stack-name CrossAccountPipeline 
--template-url https://s3.amazonaws.com/stelligent-public/cloudformation-templates/github/cross-account-pipeline/codepipeline-cross-account-pipeline.json 
 --region us-east-1 --disable-rollback --capabilities="CAPABILITY_IAM" 
--parameters ParameterKey=PipelineAWSAccountId,ParameterValue=YOURAWSACCTID
```
