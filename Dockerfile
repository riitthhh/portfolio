FROM nginx:alpine

# Remove default Nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files into the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside
EXPOSE 80

# Start Nginx when container runs
CMD ["nginx", "-g", "daemon off;"]