# command to run locally


docker build -t streamlit-docker-app .


docker run -p 8501:8501 streamlit-docker-app

streamlit run main.py


#docker push to acr
az acr login -n resource name
docker tag streamlit-azure-streamlit streamlit3.azurecr.io/streamlit_image
docker push streamlit3.azurecr.io/streamlit_image


#to automate github to ACR
run -  az ad sp create-for-rbac and az account show --query id -o tsv

and update below {
  "clientId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "clientSecret": "<your-password>",
  "subscriptionId": "<your-subscription-id>",
  "tenantId": "yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}



