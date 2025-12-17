FROM debian:stable-slim

# Install Python
RUN apt-get update && \
    apt-get install -y python3 && \
    rm -rf /var/lib/apt/lists/*

# Copy application files
COPY main.py main.py
COPY books/ books/

# Run the script
CMD ["python3", "main.py"]
