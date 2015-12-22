### docker-wso2is

Docker image to install and run WSO2 Identity Server. 

### Tags

* [5.0.0, latest](https://github.com/ihcsim/docker-wso2is/tree/is-5.0.0)

### Description

The dockerfile will:

* Use `wget` to pull the IS 5.0.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the IS 5.0.0 ZIP.
* Remove the IS 5.0.0 ZIP.
* Expose the container port `9443`, `9763`, `8000`, `10500`.
* Set the `wso2server.sh` start-up script as the container start-up entrypoint.

### Usage
* To pull: `docker pull isim/wso2is`
* To build: `docker build --rm -t your_image_name github.com/ihcsim/docker-wso2is`
* To run: `docker run --rm --name your_container_name -p 9443:9443 -p 9763:9763 -p 8000:8000 -p 10500:10500 isim/wso2is`
* To access web admin console, navigate to `https://localhost:9443`

Follow me on [![alt text][1.1]][1]
[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[1]: http://www.twitter.com/IvanHCSIM
