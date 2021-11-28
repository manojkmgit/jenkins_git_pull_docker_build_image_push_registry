# jenkins_docker_build_image_push_registry
1. Install git on jenkins server
2. Set up your Docker Registry Hub credentials in jenkins -> Dashboard -> System -> Global credentials -> (global) -> Add credentials. Value of ID given here is what you will need to put in 'registryCredential' in Jenkinsfile
3. Set up jenkins to start build on commit of the git project or trigger the build manually
4. Update Jenkinsfile to put your registry details, 'registryCredential' and git link of the repo
5. Jenkinsfile in this project does the following:
**Clone the repo
**Build the image
**Push the image to registry hub
**Remove the image
