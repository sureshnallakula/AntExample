# Set the base image to Ubuntu
FROM sureshnallakula/ubuntu_tomcat7:latest

# copy war file
RUN cp C:/Program Files (x86)/Jenkins/workspace/Antbuild_GIT/AntExample/dist/AntExample.war /var/lib/tomcat7/webapps/

# Expose the default port
EXPOSE 8080

# Default port to execute the entrypoint 
CMD ["--port 8080"]

# Set default container command
ENTRYPOINT /bin/bash
