# Build image
docker build -t p4ck/python-http .

# Push container
docker push p4ck/python-http

# Create container
docker container create --name python-http p4ck/python-http

# Start container
docker container start python-http

# See container logs
docker container logs -f python-http

# Stop container
docker container stop python-http

# Remove container
docker container rm python-http
