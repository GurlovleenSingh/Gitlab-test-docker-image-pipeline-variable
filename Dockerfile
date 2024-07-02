# Dockerfile for NGINX

# Use the official NGINX image as the base image
FROM nginx:latest

# (Optional) Set any custom configurations
# COPY nginx.conf /etc/nginx/nginx.conf

# (Optional) Copy any static files (e.g., HTML, CSS) to the NGINX web root
# COPY static-html-directory /usr/share/nginx/html

# Expose ports (if necessary, NGINX typically runs on port 80 by default)
EXPOSE 80

# Command to start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]

