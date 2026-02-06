# Base image: Python 3.11
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy repo into container
COPY . /app

# Install only pytest
RUN pip install --no-cache-dir pytest

# Default command: run pytest in /app/tests
CMD ["pytest", "tests"]
