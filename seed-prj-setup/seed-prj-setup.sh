# One-time creation of a seed project for storing our Terraform state

source ./env-setup.sh

SUFFIX=$RANDOM
PROJECT_ID=seed-project-$SUFFIX
echo Seed project: $PROJECT_ID

# Create the seed project
gcloud projects create $PROJECT_ID
gcloud config set project ${PROJECT_ID}

# Link billing account
gcloud billing projects link $PROJECT_ID --billing-account $BILLING_ACCT_ID

# Enable APIs we'll need to deploy with Terraform
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable iam.googleapis.com
gcloud services enable serviceusage.googleapis.com
gcloud services enable cloudbilling.googleapis.com
gcloud services enable cloudidentity.googleapis.com
gcloud services enable orgpolicy.googleapis.com

# And if we subsequently want to deploy infra resources...
gcloud services enable compute.googleapis.com
gcloud services enable storage-api.googleapis.com
gcloud services enable monitoring.googleapis.com
gcloud services enable logging.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable run.googleapis.com
gcloud services enable containerregistry.googleapis.com
gcloud services enable container.googleapis.com
gcloud services enable servicenetworking.googleapis.com
gcloud services enable sourcerepo.googleapis.com
gcloud services enable cloudkms.googleapis.com
gcloud services enable iamcredentials.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud services enable secretmanager.googleapis.com
gcloud services enable bigquery.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable admin.googleapis.com
gcloud services enable appengine.googleapis.com
gcloud services enable pubsub.googleapis.com
gcloud services enable securitycenter.googleapis.com
gcloud services enable billingbudgets.googleapis.com
gcloud services enable iap.googleapis.com
gcloud services enable oslogin.googleapis.com

# Bind roles on our group
gcloud organizations add-iam-policy-binding $ORG_ID \
  --member="group:$ORG_ADMINS" \
  --role="roles/storage.admin"

gcloud organizations add-iam-policy-binding $ORG_ID \
  --member="group:$ORG_ADMINS" \
  --role="roles/compute.xpnAdmin"

gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="group:$ORG_ADMINS" \
  --role="roles/serviceusage.serviceUsageConsumer"