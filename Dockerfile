FROM wso2/wso2am:latest

# Copy the script to the container
COPY modify-config.sh /usr/local/bin/modify-config.sh

# Give execution permission
RUN chmod +x /usr/local/bin/modify-config.sh

# Run the config modification script before the API Manager starts
CMD /usr/local/bin/modify-config.sh && /home/wso2carbon/wso2am-4.0.0/bin/wso2server.sh
