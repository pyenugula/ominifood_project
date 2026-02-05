# Use official Apache2 image as a base image
FROM httpd:alpine

# Set the working directory inside the container to the Apache default directory
WORKDIR /usr/local/apache2/htdocs/

# Copy the local project files into the container's Apache web directory
COPY . /usr/local/apache2/htdocs/

# Expose port 80 to access the web server
EXPOSE 80

