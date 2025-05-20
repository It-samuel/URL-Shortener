# Use a light weight base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Set the environment variable for Flask to run in development mode
ENV FLASK_ENV=development

# Run the application (FIXED THIS LINE)
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]