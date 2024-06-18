https://github.com/docker/awesome-compose/blob/master/awesome-compose.jpg

docker build --platform linux/amd64 -t spring-helloworld .
docker run -p 8080:8080 -t spring-helloworld