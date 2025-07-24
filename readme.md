# command to run locally


docker build -t streamlit-docker-app .


docker run -p 8501:8501 streamlit-docker-app

streamlit run main.py


#docker push to acr
az acr login -n resource name
docker tag streamlit-azure-streamlit streamlit3.azurecr.io/streamlit_image
docker push streamlit3.azurecr.io/streamlit_image