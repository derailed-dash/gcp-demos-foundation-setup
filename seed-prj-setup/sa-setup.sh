# ONE-TIME setup of a service account for our seed project / project factory

gcloud auth login

# Provide our seed project
export SEED_PROJECT=seed-project-28844
gcloud config set project ${SEED_PROJECT}
gcloud auth application-default login
gcloud auth application-default set-quota-project ${SEED_PROJECT}

source ./env-setup.sh # set env vars, including setting ADC for our SA

# Create the SA
gcloud iam service-accounts create ${SA_ACCOUNT} \
  --description="Seed Project Terraform Service Account" --display-name="TF SA Seed"

# Get the key - RE-RUN on any new device
gcloud iam service-accounts keys create ${SA_CREDS} \
  --iam-account ${SA_ACCOUNT_EMAIL}

# Or to explicitly activate the service account
# gcloud auth activate-service-account --key-file ${SA_CREDS}

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
  --role="roles/monitoring.editor"

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/iam.securityAdmin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/iam.serviceAccountAdmin

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/iam.serviceAccountCreator

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/serviceusage.serviceUsageConsumer

gcloud organizations add-iam-policy-binding ${ORG_ID} \
  --member="serviceAccount:${SA_ACCOUNT_EMAIL}" \
  --role roles/storage.admin
