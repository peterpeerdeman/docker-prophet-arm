# Instructions to Pull this Image from Docker Hub
```
sudo docker pull peterpeerdeman/docker-prophet-arm
```
Run the console within the container. 

```
sudo docker run -it peterpeerdeman/docker-prophet-arm /bin/bash
```

You will end up at the command prompt inside the prophet docker container.
From here, you can run python and start with the prophet commands within.

```
python app.py 
```
will run the example at the Prophet Quickstart Page : https://facebook.github.io/prophet/docs/quick_start.html

```
docker run -it peterpeerdeman/docker-prophet-arm python app.yml
```
will run the example straight from the host



# Instructions to Build this image using buildx crossplatform build
```
docker buildx create --name armbuilder
docker buildx use armbuilder
docker buildx inspect --bootstrap
docker buildx build --platform linux/arm64 -t username/docker-prophet-arm:latest --push  .
```
This will build a docker image that when launched will run in the background. 
You can modify the Dockerfile to include the libraries as you wish. 

Enjoy!

## credits

based on lppier/docker-prophet
