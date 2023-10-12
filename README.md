
## Build the container Image

to build:

```
docker build -t anaisurlichs/go-server:0.1 .
```

to run:
```
docker run -p 3333:3333 docker.io/anaisurlichs/go-server:0.1
```

## Content used to build this app
1. Start of the app server https://www.digitalocean.com/community/tutorials/how-to-make-an-http-server-in-go  
2. To create the container images: https://docs.docker.com/language/golang/build-images/ and https://github.com/GoogleCloudPlatform/golang-samples/blob/main/run/helloworld/Dockerfile 
3. To create the Trivy GitHub Action
4. Create Deployment and Service YAML Manifest