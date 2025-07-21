# Use official lightweight Python image
FROM python:3.10-slim

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE=1

# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install system dependencies (optional but helpful)
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY req.txt .
RUN pip install --no-cache-dir -r req.txt

# Copy app files into the container
COPY . .

# Expose the default Streamlit port
EXPOSE 8501

# Set Streamlit to run on 0.0.0.0 so it's accessible outside container
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
