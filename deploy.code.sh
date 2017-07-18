# BRANCH_NAME and REVISION are normally setup by Semaphore CI
# aws is configured through Configuration Files on Semaphore CI server
#BRANCH="${BRANCH_NAME:?}"
#COMMIT="${REVISION:?}"
BUCKET=$1
DIST_DIR=$2
AWS_PROFILE=amare-admin

# The value of cache-control needs to be bumped
aws s3 sync $DIST_DIR s3://$BUCKET \
    --profile $AWS_PROFILE \
    --acl public-read \
    --cache-control no-cache \
    --delete

#    --cache-control max-age=604800 \

# Upload this file under $BRANCH/brickwork.js and setup redirection to the build file
#aws s3 cp $DIST_DIR/empty s3://$BUCKET/$BRANCH/brickwork.js \
#    --website-redirect /builds/$COMMIT/brickwork.js
