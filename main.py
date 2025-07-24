import streamlit as st
import time
st.title("Hello from Azure!")

st.write("This is a simple Streamlit app running on Azure.")
st.write("You can deploy this app using Azure App Service or Azure Container Instances.")

st.write("Current time:")
st.write(time.strftime("%Y-%m-%d %H:%M:%S"))