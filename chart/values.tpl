# Default values for coppa.
# This is a YAML-formatted file.
# Declare variables to be passed into your templates.

env: ${ENVIRONMENT}
stage: ${STAGE}
domain: ${DOMAIN}
host: coppa.${DOMAIN}
gcloudProjectId: ${GCLOUD_PROJECT_ID}
gcloudServiceKey: ${GCLOUD_SERVICE_KEY}
istioEnv: ${ISTIO_INGRESS_ENVIRONMENT}
cloudflareApiEmail: ${CLOUDFLARE_API_EMAIL}
cloudflareApiKey: ${CLOUDFLARE_API_KEY}
newrelicApiKey: ${NEW_RELIC_API_KEY}
githubWebhookSecret: ${GITHUB_WEBHOOK_SECRET}
