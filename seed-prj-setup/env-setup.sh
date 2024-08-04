# Supply your values here
# export ORG=your.org.com
export ORG=gcp-demos.just2good.co.uk
# export ORG_ID=123456789012
export ORG_ID=575085288570
# export BILLING_ACCT_ID=123456-ABCDEF-123456
export BILLING_ACCT_ID=0156FA-B1FF4E-6D9ED8

# If we've already created the Seed project
# export SEED_PROJECT=seed-project-12345
export SEED_PROJECT=seed-project-28844
gcloud config set project ${SEED_PROJECT}

export ORG_ADMINS=gcp-organization-admins@${ORG}
export SA_ACCOUNT=sa-tf-seed
export SA_ACCOUNT_EMAIL=${SA_ACCOUNT}@${SEED_PROJECT}.iam.gserviceaccount.com
export SA_CREDS=~/.config/gcloud/${SA_ACCOUNT}.json
export GOOGLE_APPLICATION_CREDENTIALS=${SA_CREDS}

echo Org: $ORG
echo Org ID: $ORG_ID
echo ORG_ADMINS: $ORG_ADMINS
echo SEED_PROJECT: $SEED_PROJECT
echo SA_ACCOUNT_EMAIL: $SA_ACCOUNT_EMAIL