# Connecting 2 virtual machines app and database

1. We need to configure the Variant file with the following configurations to make sure we create 2 VM's.

```python Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip: "192.168.10.100"
   
    app.vm.synced_folder "app", "/home/vagrant/app"
    app.vm.provision "shell", path: "provision.sh", privileged: false
  end

  config.vm.define "database" do |database|
    database.vm.box = "ubuntu/bionic64"
    database.vm.network "private_network", ip: "192.168.10.150" #Can use anything below 255 for last number
    
    database.vm.synced_folder "environment", "/home/vagrant/environment" 
  end
end
```






### 2. Provision file:

We also need to make sure our provsion file is configured in the correct manner.
We have updated the provision file by adding the following 

`curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -`
- Notice how we have updated it from 6.x to 12.x

- and we have also commented out some of the commands such as:

`#Running the app`

`#cd app/`

`#npm install`

`#node app.js # this starts up the app and makes it run in the foreground in the vm`





```python #!/bin/bash

#We need to make sure whatever system runs this knows what command it is doing

# Update and Upgrade
sudo apt-get update -y #must put dash -y: we need to automate our response as there will be no one to say yes
sudo apt-get upgrade -y
# Install nginx
sudo apt-get install nginx -y
# Enable or start Nginx
sudo systemctl enable nginx -y

# Python version downlaod
sudo apt-get install python-software-properties

# download nodejs
curl -sL https://deb.nodesource.com/setup_12.x |sudo -E bash -
sudo apt-get install nodejs -y

sudo npm install pm2 -g
# Entering
# cd app/app

#install nodejs

# node app.js
```

3. We will now creat our VM's

- In the bash terminal in VS studio will will use the following commands:
`vagrant up`
This will prepare both machines and we will be able to see this in our VM virtual box.

![Alt text](vm%202%20machines.png)
 
 - Now you can open Gitbash as admin and type vagrant status just to see both machines are up and running.

 4. Configuring our Database Virtual Machine
 
 `vagrant ssh database`

 Once inside our DB run command: `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927` 
 This will give us the database key and an import confirmation should be displayed.

 Check this worked by entering:

 `echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`
it should output `deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse`

then,
Update the system: `sudo apt-get update -y`
then,
Upgrade the system: `sudo apt-get upgrade -y`
then Install the correct version of the database :
`sudo apt-get install mongodb-org=3.2.20 -y`
then install the database:
`sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20`
Start the database: `sudo systemctl start mongod`
Enable the database: `sudo systemctl enable mongod`
Check the status of the database: `sudo systemctl status mongod` # I found this is better to skip as it can stop the previous process.# on your keyboard press: CTRL + Z to exit the menu

Open the database configuration file in editor mode: `sudo nano /etc/mongod.conf`
Find `# network interfaces` and change bindIp: `127.0.0.1`  to `bindIp: 0.0.0.0` to allow all IPs to connect
Restart the database :`sudo systemctl restart mongod`
Enable the database: `sudo systemctl enable mongod`

### Configuring App virtual Machine:

Open another gitbash terminal as ADMIN:

`vagrant ssh app`

You should now be in your `app` virtual machine

cd into `app` folder until you see `app.js` 

Create an environmental variable to link to the posts folder of the database:

`export DB_HOST=mongodb://192.168.10.150:27017/posts`

print: `printenv DB_HOST` if done correctly you should see this: `mongodb://192.168.10.150:27017/posts`

then `npm install` to install the app. it will output `node seeds/seed.js` - which we will run again, even if the system runs it for us, just to make sure the database has been populated.

node seeds/seed.js # should ouput `[...] Database Cleared Database Seeded`, which is our confirmation that the database has been populated.

if not we can actually just run the command `node seeds/seed.js` and seed it ourselves

the webpage might run now by entering `http://192.168.10.100/posts` if it is doesn't work enter
`node app.js` and then it should definetly work. 

the app content should now be updated.
![Alt text](recent%20posts.png)

and we are all done.






