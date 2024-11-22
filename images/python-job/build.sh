# Build image
docker build -t p4ck/python-job .

# Push container
docker push p4ck/python-job

# Create container
docker container create --name python-job p4ck/python-job

# Start container
docker container start python-job

# See container logs
docker container logs -f python-job

# Stop container
docker container stop python-job

# Remove container
docker container rm python-job
