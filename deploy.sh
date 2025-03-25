#!/bin/bash

# Set Tomcat path and WAR file location
TOMCAT_HOME="/path/to/tomcat"
DEPLOY_DIR="$TOMCAT_HOME/webapps"
WAR_FILE="build/my-app.war"  # Adjust path and filename if necessary

# Stop Tomcat
echo "Stopping Tomcat..."
$TOMCAT_HOME/bin/shutdown.sh

# Deploy the new WAR file
echo "Deploying the app to Tomcat..."
cp $WAR_FILE $DEPLOY_DIR

# Start Tomcat again
echo "Starting Tomcat..."
$TOMCAT_HOME/bin/startup.sh
