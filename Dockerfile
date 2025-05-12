# Use official Python slim image
FROM python:3.12-slim

# Set environment to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Set working directory inside the container
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Install system dependencies for Python packages like matplotlib, pillow
# RUN apt-get update && \
#     apt-get install -y gcc libglib2.0-0 libsm6 libxext6 libxrender-dev && \
#     rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask app port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
