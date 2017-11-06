# jenkins_docker

## Create Docker Image - Don't have to do this if you are running the applications
Upload the proper jenkins config files to the repo. Then in the Dockerfile, add a commad to upload the config files to the proper location in the image.

Build the Docker Image with `docker image build -t kevinkoolwhip/jenkins .`

Push Image to to repo `docker image push kevinkoolwhip/jenkins`

## Run Docker Image
If you do not have docker swarm running. Run `docker swarm init`

Upload the username and password as a docker secret 

`echo "admin" | docker secret create jenkins-user -` and `echo "admin" | docker secret create jenkins-pass -`

Get the current docker images by `docker pull kevinkoolwhip/jenkins:latest` and `docker pull kevinkoolwhip/nodeapp`

Run the Jenkins container by `docker stack deploy -c jenkins.yml jenkins`

## Stop Docker Container
Stop Docker container by `docker stack rm jenkins`

Remove secrets `docker secret rm jenkins-user` and `docker secret rm jenkins-pass`

default login username admin password admin

to login to the container user docker exec -u root -ti CONTAINER_NAME bash 
