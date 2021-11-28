#build the image

docker image build -t php_web_server .

#list the images

docker image ls

#run the image in a container in detached mode

docker container run -dit --name php_container_1 -p 8080:80 php_web_server

#list the comtainers

docker container ls -a

#check the docker logs

docker logs eaefbe528ab0

#run the curl to verify that app is working

curl http://localhost:8080
