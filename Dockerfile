# Use a lightweight Python image
FROM python:3.10-slim

# Install system dependencies for FFmpeg and other tools
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    libsndfile1 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Clone the loopextractor repository
RUN git clone https://github.com/jblsmith/loopextractor.git

# Install loopextractor as a Python package
WORKDIR /app/loopextractor
RUN pip install .

# Set the working directory back to /app
WORKDIR /app

# Default command to process a single input file
# Takes the first argument as the input file path and the second argument as the output directory
ENTRYPOINT ["python", "/app/loopextractor/loopextractor/loopextractor.py", "/app/input.mp3", "/app/output/experimental_prefix"]
