# Step 1: Use official Tomcat image
FROM tomcat:10.1.45-jdk17-temurin

# Step 2: Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy your WAR file into Tomcat's webapps folder
COPY Payment_Fraud_Detection.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose Tomcat default port
EXPOSE 8080

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]
