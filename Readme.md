Host our website using cloud computing concept
==========================================================

Pre-Requsistes
-----------------
1. AZURE VM 
2. Apache2 webserver Installed on VM

Steps:
--------
1. Create  an Virtual machine in Azure.
2. Install apache2 webserver in our Azure VM  using the below cmds

    sudo apt update
 
    sudo apt install apache2 -y 

3. Check the status of the apache2 webserver using the cmd 

    systemctl status apache2 

4. Clone the src code from the Github to Azure VM  using cmd 

    git clone url <>

5. Copy the src to apache2 webserver home dierctory 

   (/var/www/html).
  
6. Add a HTTP Network setting --> NetworkSG inbound port  to allow traffic on Port 80.

8. Access our application using Public IP Address. 

   ( http://<ip>:80 )



####Runing Docker image on local #

1. create a Docker file 

2. Build image from the docker file using below command.

   docker build -t omnifood .
   
3. Run the container from the image 

   docker run -p 8080:80 omnifood:latest

4. Access the website http://<ip>:8080
