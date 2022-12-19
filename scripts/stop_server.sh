#!/bin/bash
sudo systemctl stop tomcat9
sudo rm -rf /var/lib/tomcat9/webapps/CounterWebApp*
touch a.txt
