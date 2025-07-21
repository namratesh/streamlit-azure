#command to run locally
docker build -t streamlit-docker-app .
docker run -p 8501:8501 streamlit-docker-app
