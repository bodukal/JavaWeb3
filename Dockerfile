# Use an official Tomcat base image or a JDK image if you want to run the WAR using Java
FROM tomcat:9-jdk11-openjdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file into the Tomcat webapps directory
COPY target/WebAppCal-0.0.6.war /usr/local/tomcat/webapps/

# Expose the port Tomcat will run on (default is 8080)
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

