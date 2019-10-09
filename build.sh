# Required ENVs
: ${STAGE:?Build argument needs to be set and non-empty.}
: ${GCLOUD_PROJECT_ID:?Build argument needs to be set and non-empty.}
# source cloud/config/export.sh

# Build the docker image
docker build -t coppa:$STAGE .

# Tag the image
docker tag coppa:$STAGE gcr.io/$GCLOUD_PROJECT_ID/coppa:$STAGE

# Push image to Google Cloud Registry
docker push gcr.io/$GCLOUD_PROJECT_ID/coppa:$STAGE
