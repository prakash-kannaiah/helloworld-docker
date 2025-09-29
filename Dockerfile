FROM ubuntu:latest

# Install Python
RUN apt-get update && apt-get install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies (allow break-system-packages)
RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt

# Copy source code
COPY app/ /app

# Run the app
CMD ["python3", "app.py"]
