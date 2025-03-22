# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Define the command to run the application
CMD ["python", "app.py"]

# Use the official Nginx image
FROM nginx:latest

# Copy HTML files to Nginx's default directory
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
