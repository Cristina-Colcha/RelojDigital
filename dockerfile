# Uses the official Python image as a basis
FROM python:3.9-slim
# Set the working directory in the container
WORKDIR /app
# Copy the necessary files to the container
COPY . /app
# Install the necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Expose the port that your Flask application will be running on
EXPOSE 5001
# Run the Flask application
CMD [“python”, “app.py”]

