FROM nginx:alpine

# website files to nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

