# Use Python base image
FROM python:3.10-alpine

WORKDIR /app

# Copy relevant files
COPY --exclude=Dockerfile . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the Flask app
CMD ["python", "app.py"]
