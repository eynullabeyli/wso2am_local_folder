#!/bin/bash
# Example modification to change the hostname
sed -i 's/hostname = "localhost"/hostname = "mycustomhost"/' /home/wso2carbon/wso2am-4.0.0/repository/conf/deployment.toml
