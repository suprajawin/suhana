# Use official Tomcat base image
FROM tomcat:9.0

# Remove the default web apps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY sample.war /usr/local/tomcat/webapps/sample.war

# Expose port (optional - for local running)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
