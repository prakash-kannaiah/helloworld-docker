FROM ubuntu:latest

# Install Python
RUN apt-get update && apt-get install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy dependencies (if any)
COPY requirements.txt .

# Install dependencies (if any)
RUN pip3 install --no-cache-dir -r requirements.txt || true

# Copy source code
COPY app/ /app

# Run the app
CMD ["python3", "app.py"]
