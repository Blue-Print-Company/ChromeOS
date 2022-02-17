# Version: Linux
FROM ubuntu:latest

# Init
WORKDIR /App
COPY . .

# Start App
CMD ["bash", "Main.sh"]
