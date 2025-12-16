# Use a lightweight Debian base image
FROM debian:stable-slim

# Copy your compiled Go server into the container
COPY goserver /bin/goserver

# Make the binary executable
RUN chmod +x /bin/goserver

ENV PORT=8991

# Start the server when the container runs
CMD ["/bin/goserver"]
