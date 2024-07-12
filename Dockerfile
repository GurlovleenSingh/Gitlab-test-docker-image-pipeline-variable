# Dockerfile for NGINX

# Use the official NGINX image as the base image
FROM nginx:latest

# (Optional) Copy any static files (e.g., HTML, CSS) to the NGINX web root
COPY index.html /usr/share/nginx/html

# Expose ports (if necessary, NGINX typically runs on port 80 by default)
EXPOSE 80

# Command to start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]

