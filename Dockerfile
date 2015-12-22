#
# WSO2 IS 5.0.0
#
FROM isim/oraclejava:1.7.0_80
MAINTAINER Ivan Sim, ihcsim@gmail.com

ENV VERSION=5.0.0

# copy zip from local folder to container
RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2is-$VERSION.zip && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2is-$VERSION.zip -d /opt && \
    rm /opt/wso2is-$VERSION.zip

EXPOSE 9443 9763 8000 10500
WORKDIR /opt/wso2is-$VERSION
ENTRYPOINT ["bin/wso2server.sh"]
