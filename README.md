docker-wso2is
=============

Docker Image for WSO2 Identity Server(IS).

The dockerfile will:

* Copy `IS 5.1.0 zip` to /otp from Packages directory.
* Unzip the IS 5.1.0 ZIP.
* Expose the container port `9443`.
* Set the IS `wso2server.sh` start-up script as the container start-up command.

### Usage
* To pull: `docker pull anitech/wso2-is`
* To build: `docker build -t your_image_name github.com/tapas4java/docker-wso2is`
* To run: `docker run --rm --name your_container_name -p 9443:9445 your_image_name`
* To access ESB web admin console, navigate to `https://localhost:9445`