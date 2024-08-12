# Use the official Tomcat image from the Docker Hub
FROM tomcat:9.0

# Set environment variable for the Tomcat webapps directory
ENV CATALINA_HOME /usr/local/tomcat

# Remove the default web application
RUN rm -rf ${CATALINA_HOME}/webapps/ROOT

# Copy the WAR file into the Tomcat webapps directory
COPY petclinic.war ${CATALINA_HOME}/webapps/ROOT.war

# Expose the port Tomcat runs on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]