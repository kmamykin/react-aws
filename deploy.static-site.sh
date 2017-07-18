set -x
STACK_NAME=www-amare-tv
AWS_PROFILE=savant-admin
aws cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file cfn-static-site.yml \
    --parameter-overrides DomainName=www.amare.tv HostedZone=amare.tv \
    --profile $AWS_PROFILE \
    --capabilities CAPABILITY_IAM

# Example how to query stack for output
# aws cloudformation describe-stacks --profile $AWS_PROFILE --stack-name account --query 'Stacks[0].Outputs[*]' --output text | grep TemplatesBucketName | awk '{print $2}'
# aws cloudformation wait snapshot-completed --snapshot-ids snap-aabbccdd
# aws cloudformation wait stack-$ACTION-complete --profile $AWS_PROFILE --stack-name $STACK_NAME
