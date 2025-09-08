# Use a lightweight web server image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx website
RUN rm -rf ./*

# Copy our Sudoku project files into the container
COPY . .

# Expose port 80 for the container
EXPOSE 80

# Nginx runs by default, so no CMD needed
