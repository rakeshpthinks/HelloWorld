# Use the latest version of Ubuntu
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Install necessary packages for running the executable
RUN apt-get update && apt-get install -y libstdc++6

# Copy the compiled binary from the host to the container
COPY build/HelloWorld .

# Run the application
CMD ["./HelloWorld"]

