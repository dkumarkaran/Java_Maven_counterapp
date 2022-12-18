<h1><b>CICD with TeamCity and CodeDeploy</b></h1>

<h2>Use the path as shown bellow to access the Application.</h2>

<b>http://publicip:8080/CounterWebApp/</br>
  
<h2>To *Manually* Build and Deploy the application We require Maven and Tomcat9</h2>
  
<h2>  Maven Installation steps:</h2>

<p> sudo apt install openjdk-11-jdk</br>
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz</br>
tar -xvf apache-maven-3.6.3-bin.tar.gz</br>
sudo mv apache-maven-3.6.3 /opt/</br>
M2_HOME='/opt/apache-maven-3.6.3'</br>
PATH="$M2_HOME/bin:$PATH"</br>
export PATH</br></p>

<h2>Tomcat9 Installation steps:</h2>
  
<b> sudo apt update</br>
<b> sudo apt install openjdk-11-jdk -y</br>
<b> sudo apt install tomcat9 tomcat9-admin -y</br>
<b> sudo ufw allow from any to any port 8080 proto tcp</br>
<b> sudo systemctl status tomcat9</br>
<b> Note: open port 8080 on the vm.</br>
<h2> To Build and Deploy application follow the below steps</h2>
<h2> Build Steps:</h2>
<b> mvn clean install compile package</br>
<h2> To Deploy the application</h2>
<b> We have to Copy the Artifact war file to Tomcat webapp directory</br>
<b> sudo cp target/CounterWebApp.war /var/lib/tomcat9/webapp/</br>
<b> sudo systemctl restart tomcat9</br>


<h3>For Docker or Kubernetes Implememtation of the Application Goto: https://github.com/dkumarkaran/Counter_Application</h3>
