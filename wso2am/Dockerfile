FROM wso2/wso2am:latest

# Switch to root user to change permissions
USER root

# Copy the custom script into the container
COPY modify-config.sh /usr/local/bin/modify-config.sh

# Make sure the script is executable
RUN chmod +x /usr/local/bin/modify-config.sh

# Switch back to the default user
#USER wso2user

# Run the script and start WSO2 API Manager
CMD ["/bin/bash", "-c", "/usr/local/bin/modify-config.sh && /home/wso2carbon/wso2am-4.0.0/bin/wso2server.sh"]

