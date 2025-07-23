# Use official lightweight Python image
FROM python:3.10-slim

# Prevents Python from writing pyc files to disk
ENV PYTHONDONTWRITEBYTECODE=1

# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY req.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files into the container
COPY . .

# Expose default port (optional, mainly metadata)
EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8081", "--server.address=0.0.0.0"]

