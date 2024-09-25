#!/bin/bash

# Update the hostname in deployment.toml
sed -i 's/hostname = "localhost"/hostname = "mycustomhost"/' /home/wso2carbon/wso2am-4.0.0/repository/conf/deployment.toml

# Set PostgreSQL as the database in deployment.toml
sed -i 's|url = "jdbc:h2:.*"|url = "jdbc:postgresql://postgres_db:5432/apim_db"|' /home/wso2carbon/wso2am-4.0.0/repository/conf/deployment.toml
sed -i 's/type = "h2"/type = "postgres"/' /home/wso2carbon/wso2am-4.0.0/repository/conf/deployment.toml
sed -i 's/username = ".*"/username = "apim_user"/' /home/wso2carbon/wso2am-4.0.0/repository/conf/deployment.toml
sed -i 's/password = ".*"/password = "apim_password"/' /home/wso2carbon/wso2am-4.0.0/repository/conf/deployment.toml

# Add any additional configuration changes here

# Execute WSO2 API Manager server startup
/home/wso2carbon/wso2am-4.0.0/bin/wso2server.sh
