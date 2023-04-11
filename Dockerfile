# Use the official Alpine Linux image as the base image
FROM alpine:latest

# Update the package manager and install Apache
RUN apk update && apk add apache2

# Copy your web files to the container
COPY index.html /var/www/localhost/htdocs/

# Expose port 80 to the host
EXPOSE 80

# Start the Apache web server when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
~                                     
