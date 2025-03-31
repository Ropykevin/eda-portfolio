# Use the official Nginx image as base
FROM nginx:alpine

# Copy the website files to Nginx's default serving directory
COPY . /usr/share/nginx/html/

# Copy custom Nginx configuration if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 5001

# Start Nginx
CMD ["nginx", "-g", "daemon off;"] 