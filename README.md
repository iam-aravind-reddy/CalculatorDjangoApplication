# Containerizing CalculatorDjango Application with Docker and Reduce Image Size by Multi Stage Docker Builds.

- Steps to Containerize CalculatorDjango Application with a CentOS base Image
  
   - Launch an EC2 instance of our choice in AWS by allowing 8000 port in the inbound rules your Security Groups.
     
   - Update the packages depending on the flavour of the machine.
     
   - Install Docker.
     
   - Clone the Repository using the below command(Replace the link with your repository link).
     
     ```bash
     git clone <repository_link>
     ```
  - If you are performing  all the operations other than the root user make sure you execute the below command(Replace user with the user of your choice).

    ```bash
    sudo usermod -aG docker <user>
    ```

  - Start Docker

    ```bash
    sudo systemctl start docker
    ```
    
  - Build the Dockerfile using the below command(Replace username and Imagename for your choice).

    ```bash
    sudo docker build -t <username>/<imagename> .
    ```
    
  - Once the Image is successfully built, Run the image using below command(Replace the respective imageid or username/imagename for your choice).

   ```bash
   sudo docker run -it -p 8000:8000 <imageid>
   ```
   
   or

   ```bash
   sudo docker run -it -p 8000:8000 <username>/<imagename>
   ```

  - Once the container is started. Access the application using the below command in your feasible browser(Replace IP address with your IP address).

    ```bash
    <ip-address>:8000
    ```

- Steps to build a docker image using multi stage docker build to reduce the image size.

    - Build the Dockerfile using the below command(Replace username and Imagename for your choice).

      ```bash
      sudo docker build -t <username>/<imagename> multi-stage-dockerfile .
      ```
   - Once the Image is successfully built, Run the image using below command(Replace the respective imageid or username/imagename for your choice).

     ```bash
     sudo docker run -it -p 8000:8000 <imageid>
     ```
     
     or

     ```bash
      sudo docker run -it -p 8000:8000 <username>/<imagename>
     ```

   - Once the container is started. Access the application using the below command in your feasible browser(Replace IP address with your IP address).

     ```bash
     <ip-address>:8000
     ```

  Output :

  <br>

     ![image](https://github.com/Aravind-pendyala24/CalculatorDjangoApplication/assets/80102707/e0738f93-d58c-4505-b532-542f89753ade)


  Once the Respective builds are completed , We observe that the image size has recuced from 617MB to 171MB with multi stage docker builds.
  
  <br>
  
     ![image](https://github.com/Aravind-pendyala24/CalculatorDjangoApplication/assets/80102707/9662d2ce-6671-4f31-87b7-f5726b72d0d1)


     
     

      

    
