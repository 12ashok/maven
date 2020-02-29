FROM ubuntu:latest
LABEL maintainer="ashok@gmail.com"
RUN apt-get update && apt-get upgrade -y
# Install NGINX to test.
RUN apt-get install nginx -y
# Expose port 80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
