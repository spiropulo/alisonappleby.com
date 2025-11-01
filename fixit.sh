PROJECT_ID=jolly-273700
PROJECT_NUMBER=$(gcloud projects describe $PROJECT_ID --format='value(projectNumber)')
CB_SA="815844173256@cloudbuild.gserviceaccount.com"
DEPLOYER_SA="cloud-run-deployer@$PROJECT_ID.iam.gserviceaccount.com"

# 2) give it Cloud Run Admin (so it can deploy)
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="serviceAccount:$DEPLOYER_SA" \
  --role="roles/run.admin"

# 3) allow Cloud Build to impersonate it
gcloud iam service-accounts add-iam-policy-binding $DEPLOYER_SA \
  --member="serviceAccount:$CB_SA" \
  --role="roles/iam.serviceAccountUser"