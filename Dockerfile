FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy application files
COPY . /usr/share/nginx/html/

# Expose web port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]