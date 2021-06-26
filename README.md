## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://docs.google.com/document/d/1rIroYnC_H8L4v-7lIEjbOfXk9dMdTp7DkoEatkEfjRU/edit?usp=sharing

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the install-elk.yml file may be used to install only certain pieces of it, such as Filebeat.

  - install-elk.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly resilient (high availability), in addition to restricting inbound and outboundto the network.
- Load balancer controls some inbound and outbound rules.
- Acts as a very basic form of Firewall
- Still requires Network Security Group (NSG)
- Jump-box limits public traffic to one location.
  - Incoming traffic required to pass through jump-box. 
  - Limits unwanted public traffic.
  - Unrecognized IP are deinied access. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system system logs.
- Filebeat monitors log files and centralizes log data.
- Metricbeat records the metrics from the system and
  services running on your server. 

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.4   | Ubuntu 20.04 LTS |
| Web-1    | VM       | 10.1.0.5   | Ubuntu 20.04 LTS |
| Web-2    | VM       | 10.1.0.6   | Ubuntu 20.04 LTS |
| Web-3    | VM       | 10.1.0.8   | Ubuntu 20.04 LTS |
| ELK      | VM       | 10.2.0.4   | Ubuntu 20.04 LTS |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: myPublic IP

Machines within the network can only be accessed by SSH or HTTP connection.
- my Local machine
- Jump-box 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | myPublic_IP          |
| Web-VM1  | No                  | 10.1.0.4             |
| Web-VM2  | No                  | 10.1.0.4             |
| Web-VM3  | No                  | 10.1.0.4             |
| Elk-VM   | Yes                 | myPublic_IP

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Ease of setup
- Limited chances of error
- Scalable

The playbook implements the following tasks:
- Install Docker application 
- Install pip3
- Install Docker-Python Module pip
- VM Memory Configuration
- Download and Lauch Docker Container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

https://docs.google.com/document/d/1EcyAry8A4VYJRkCqGHTuNuhZT78CGYfVFx_v0dTA53E/edit?usp=sharing

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.1.0.5 Web-VM1
- 10.1.0.6 Web-VM2
- 10.1.0.8 Web-VM3

We have installed the following Beats on these machines:
- File Beat
- Metric Beat

These Beats allow us to collect the following information from each machine:
- Filebeat - forwards and centralized log data, and monitors log files or locations specified.
- Filebeat - forwards the data to either Elasticsearch or Logstash
- Metricbeat - collects statistics and sends the data to Elasticsearch or Lostash.
- Metricbeats - monitors servers by collecting system data running on a specified server.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to /etc/ansible.
- Update the /etc/ansible/hosts file to include the IP addresses of the VM's.
- Run the playbook, and navigate to http://[elk_publicIP]:5601/app/kibana to check that the installation worked as expected.

- The playbook(s) are Yammel file(s)
- Updates to the /etc/ansible/hosts file are needed to make Ansible run a playbook , correctly.
- Hosts was specified as Webservers in the /etc/ansible/hosts thereby when each playbook is run the playbook directs which machine the software is downloaded. The ELK server was specified as elk host in the /etc/ansible/hosts file, thereby when the specific install-elk.yml playbook is run, the ELK server is dowloaded on a specified system. 
- URL used to check that the ELK server is running - http://[elk_publicIP]:5601/app/kibana

By running the command ansible-playbook, then the name of the Yammel file (i.e. filebeat-playbook.yml), a playbook command can be executed and updates to the exciting playbook can be made.  