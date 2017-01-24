# docker-wso2is

[ ![Codeship Status for ihcsim/docker-wso2is](https://app.codeship.com/projects/40ae82f0-c3e4-0134-bbfc-4e06b7b88b41/status?branch=master)](https://app.codeship.com/projects/197787) [![](https://images.microbadger.com/badges/version/isim/wso2is:5.3.0.svg)](https://microbadger.com/images/isim/wso2is:5.3.0 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/isim/wso2is:5.3.0.svg)](https://microbadger.com/images/isim/wso2is:5.3.0 "Get your own commit badge on microbadger.com") [![](https://images.microbadger.com/badges/image/isim/wso2is:5.3.0.svg)](https://microbadger.com/images/isim/wso2is:5.3.0 "Get your own image badge on microbadger.com")

Docker image to install and run WSO2 Identity Server.

## Description
The Dockerfile will:

* Use `wget` to pull the IS 5.3.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the IS 5.3.0 ZIP.
* Remove the IS 5.3.0 ZIP.
* Expose the container port `9443`, `9763`, `8000`, `10500`.
* Set the `wso2server.sh` start-up script as the container start-up entrypoint.

## Usage
To run the Identity Server:
```sh
$ docker run --rm --name your_container_name -p 9443:9443 isim/wso2is
```
To access web admin console, navigate to https://localhost:9443 from your web browser.

## License
Refer to the [LICENSE](LICENSE) file. WSO2 license can be found [here](http://wso2.com/licenses).
