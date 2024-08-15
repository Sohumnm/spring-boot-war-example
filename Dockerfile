# Use a base image with Tomcat 9
FROM tomcat:9-jdk11-openjdk-slim

# Remove the default webapps folder
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY target/hello-world-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/foo.war

# Expose the port Tomcat is running on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
