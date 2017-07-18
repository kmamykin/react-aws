STACK_NAME=realtime
AWS_PROFILE=amare-admin
aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://./realtime.yml \
    --parameters ParameterKey=IdentityPoolId,ParameterValue=us-east-1:24512319-ac0d-44c5-a62f-3324768be3bd \
    --profile $AWS_PROFILE \
    --capabilities CAPABILITY_IAM
# Example how to query stack for output
# aws cloudformation describe-stacks --profile $AWS_PROFILE --stack-name account --query 'Stacks[0].Outputs[*]' --output text | grep TemplatesBucketName | awk '{print $2}'
aws cloudformation wait stack-update-complete --profile $AWS_PROFILE --stack-name $STACK_NAME
