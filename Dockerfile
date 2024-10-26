# Use an official PHP image with Apache
FROM php:8.0-apache

# Copy all files in the repository to the web root
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Expose the port the app runs on
EXPOSE 10000

# Start the PHP server
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/var/www/html"]
