#!/bin/bash
sudo systemctl stop tomcat9
sudo rm -f /var/lib/tomcat9/webapps/CounterWebApp.war
