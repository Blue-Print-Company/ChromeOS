# Version: Linux
FROM ubuntu:latest

# Compatibility
RUN apk add --no-cache python2 g++ make

# Init
WORKDIR /App
COPY . .

# Start App
CMD ["bash", "Main.sh"]
