# Use an official PHP image with Apache
FROM php:8.0-apache

# Copy all files in the repository to the web root
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Enable mod_rewrite (if needed for routing)
RUN a2enmod rewrite

# Set the default index file
RUN echo "DirectoryIndex begin.php" >> /etc/apache2/apache2.conf

# Expose the port the app runs on
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
