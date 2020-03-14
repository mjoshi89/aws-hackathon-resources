# aws-hackathon-resources
This repository contains some resources that would help speed up the setup in a blank AWS account.

Please find the information about the various CF templates included under cloudformation folder:

Basic_Networking.template: This template is to be used when you want to setup a basic networking in your VPC, which includes 1 VPC, 3 Public and 3 Private subnets.

  "Tech Description" : "This template will setup 1 VPC with /16 address range and 3 Public subnets in 3 AZs with /24 address ranges(x.x.1.0/24, x.x.3.0/24 and x.x.5.0/24) and 3 Private subnets in 3 AZs with /24 address ranges(x.x.2.0/24, x.x.4.0/24 and x.x.6.0/24). "

  "Pre-Reqs" : "No Pre-Reqs required."

Basic_Networking_With_OpsWorks_WordPress_Monitoring.template: This template is to be used when you want to setup a wordpress site in AWS OpsWorks instance with some monitoring in Grafana available. It is possible to extend the functionality of this template by adding chef/ruby code, in case you want to run additional docker images, the instance come with docker installed.

   "Tech Description" : "WordPress is web software you can use to create a beautiful website or blog. This template installs WordPress with a local MySQL database for storage. It also creates the monitoring dashboard for your website."

   "Pre-Reqs" : "Please create one IAM role named aws-opsworks-service-role by attaching inbuild profiles named AmazonEC2FullAccess, AWSOPsWorksFullAccess and AWSOpsWorksRole and one IAM instance profile named aws-ec2-instance-role by attaching inbuild policies AmazonEC2FullAccess and AmazonS3FullAccess "

   "Access" : "Please go to Output section to find out the public IP of the instance and then go to http://<public-ip>:8080 to go to website and http://<public-ip>:3000 to go to Grafana dashboard. to SSH into instances you can use OpsWorks Stack permission and provide your SSH key in there."

WordPress_Single_Instance.template: This template is to be used when you want to directly work on creating a website in WordPress.

  "Tech Description" : "WordPress is web software you can use to create a beautiful website or blog. This template installs WordPress with a local MySQL database for storage. It demonstrates using the AWS CloudFormation bootstrap scripts to deploy WordPress."

  "Pre-Reqs" : "Please create a key-pair before utilizing this template. EC2 --> Key Pairs --> Create Key Pair"

  "Access" : "Please go to Output section to find out the website URL."

OpsWorks_PHP.template: This template creates a default php application to work with using AWS OpsWorks service.

  "Tech Description" : "The default PHP application code can be accessed from git://github.com/amazonwebservices/opsworks-demo-php-simple-app.git"

  "Pre-Reqs" : "None"

  "Access" : "Please go to Output section to find out the public Ip of the instance and access it to get to your php application."

ElasticBeanstalk_Nodejs.template: This template creates a ElasticBeanStalk environment for a Nodejs application.

  "Tech Description" : "The template creates the ElasticBeanStalk application with the autoscaling configuration and cloudwatch alerts."

  "Pre-Reqs" : "None"

  "Access" : "Please go to the URL mentioned in the ElasticBeanStalk application to get to your deployed application."
