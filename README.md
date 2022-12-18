<h1><b>CICD with TeamCity and CodeDeploy</b></h1>

<h2>Use the path as shown bellow to access the Application.</h2>

http://publicip:8080/CounterWebApp/</br>

<h2>We can Manually Build and Deploy the application using the below given steps</h2>

To Manually Build and Deploy the application We require Maven and Tomcat9
  
<h2>  Maven Installation steps:</h2>

<code>sudo apt install openjdk-11-jdk</code><br>
<code>wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz</code><br>
<code>tar -xvf apache-maven-3.6.3-bin.tar.gz</code><br>
<code>sudo mv apache-maven-3.6.3 /opt/</code><br>
<code>M2_HOME='/opt/apache-maven-3.6.3'</code><br>
<code>PATH="$M2_HOME/bin:$PATH"</code><br>
<code>export PATH</code><br>

<h2>Tomcat9 Installation steps:</h2>
  
<code>sudo apt update</code></br>
<code>sudo apt install openjdk-11-jdk -y</code></br>
<code>sudo apt install tomcat9 tomcat9-admin -y</code></br>
<code>sudo ufw allow from any to any port 8080 proto tcp</code></br>
<code>sudo systemctl status tomcat9</code></br>
Note: open port 8080 on the vm.</br>
<h2> To Build and Deploy application follow the below steps</h2>
<h2> Build Steps:</h2>
<code>mvn clean install compile package</code></br>
<h2> To Deploy the application</h2>
Note: Since we have not added the tomcat plugin in the pom.xml we have to manually place the war file in the /var/lib/tomcat9/webapp directory.</br>
Copy the Artifact war file which is created in the target folder to Tomcat webapp directory</br>
<code>sudo cp target/CounterWebApp.war /var/lib/tomcat9/webapp/</code></br>
<code>sudo systemctl restart tomcat9</code>


<h3>For Docker or Kubernetes Implememtation of the Application Goto: https://github.com/dkumarkaran/Counter_Application</h3>
