# Set the base image to Ubuntu
FROM sureshnallakula/ubuntu_tomcat7:latest

# Create the default data directory
RUN mkdir -p /data1/

# switch to new directory

WORKDIR /data1

# perform git clone
RUN git clone https://github.com/sureshnallakula/AntExample.git

# switch to cloudenabledwebapp directory
WORKDIR /data1/AntExample/AntExample

# copy war file
RUN cp /data1/AntExample/AntExample/AntExample.war /var/lib/tomcat7/webapps/


# Expose the default port
EXPOSE 8080

# Default port to execute the entrypoint 
CMD ["--port 8080"]

# Set default container command
ENTRYPOINT /bin/bash
