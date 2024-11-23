# Build image
docker build -t p4ck/curl-http .

# Push image
docker push p4ck/curl-http

# Create container
docker container create --name curl-http p4ck/curl-http

# Start container
docker container start curl-http

# See container logs
docker container logs -f curl-http

# Stop container
docker container stop curl-http

# Remove container
docker container rm curl-http
