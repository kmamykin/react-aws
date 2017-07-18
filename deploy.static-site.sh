set -x
STACK_NAME=www-amare-tv
AWS_PROFILE=savant-admin
aws cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file cfn-static-site.yml \
    --parameter-overrides DomainName=www.amare.tv HostedZone=amare.tv \
    --profile $AWS_PROFILE \
    --capabilities CAPABILITY_IAM
