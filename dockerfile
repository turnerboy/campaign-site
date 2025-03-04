# Dockerfile
FROM nginx:stable-alpine

# Remove existing default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy our local files to the default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 (in case you want to explicitly set it)
EXPOSE 80

# Nginx runs automatically via the default entrypoint in the Nginx image
