# Name: Ong Shu Ying
# Matric No.: U2102835/1

# Dockerfile for Javascript Tetris
# Original Repository: https://github.com/jakesgordon/javascript-tetris
# Forked Repository: https://github.com/Shuying28/javascript-tetris

# Use NGINX base image
FROM nginx:latest

# Set maintainer information
LABEL maintainer="Ong Shu Ying ongshuyiing@gmail.com"

# Set working directory
WORKDIR /var/www/html

# Copy custom NGINX configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy project files into the container
COPY index.html .
COPY stats.js .
COPY texture.jpg .

# Expose port 80 for the web server
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
