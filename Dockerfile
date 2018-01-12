# Start with a scratch (no layers)
#FROM scratch
# Added for Certification Authority
FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y ca-certificates

# Copy our static linked library
ADD hello main

# Make port 80 available to the world outside this container
EXPOSE 80

# Run it when the container launches
ENTRYPOINT ["./main"]