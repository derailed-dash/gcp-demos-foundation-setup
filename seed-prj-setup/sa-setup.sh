# Setup a service account for our seed project / project factory

gcloud auth login

export SEED_PROJECT=seed-project-28844
gcloud config set project ${SEED_PROJECT}
gcloud auth application-default set-quota-project ${SEED_PROJECT}
gcloud auth application-default login

source ./env-setup.sh

export SA_ACCOUNT=sa-tf-seed
export SA_ACCOUNT_EMAIL=${SA_ACCOUNT}@${SEED_PROJECT}.iam.gserviceaccount.com
export SA_CREDS=~/.config/gcloud/${SA_ACCOUNT}.json
export GOOGLE_APPLICATION_CREDENTIALS=${SA_CREDS}

# Create the SA
gcloud iam service-accounts create ${SA_ACCOUNT} \
  --description="Seed Project Terraform Service Account" --display-name="TF SA Seed"

# Get the key
gcloud iam service-accounts keys create ${SA_CREDS} \
  --iam-account ${SA_ACCOUNT_EMAIL}

# Or to explicitly activate the service account
# gcloud auth activate-service-account --key-file ${TF_CREDS}

# Org-level bindings
gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/resourcemanager.organizationViewer

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/resourcemanager.folderAdmin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/resourcemanager.projectCreator

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/resourcemanager.projectIamAdmin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/billing.admin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role="roles/compute.xpnAdmin"

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role="roles/compute.networkAdmin"

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/iam.securityAdmin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/iam.serviceAccountAdmin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/serviceusage.serviceUsageConsumer

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/storage.admin
