## Advanced Bash

### Vagrant creates a standard development enviroment for everyone to use.

Being able to interact with our virtual machine. No Graphic User Interface so we need commands.

Kernal

then security level

### User mode: which is the shell or command line.

`uname` tells you what interface you are using.
`flag` what we give linux after a flag. We can use it in many ways to be more specific for example -y or -a. `uname --all` gives all the info.
`uname` `-r` `-m` `-i` `-o` `-si` `-srp` and many more.

### More basic commands/Navigation:

`ls -a`: we can see hidden folders

`cd ../../` goes 2 back directories.

`cd ~`: goes back to your home directory

`cd/` goes to back to root directorty. 

`ls` lists files and folders.
`ls -l` list the files and directory permisions.

Absolute path: Complete path to the said file. "C:\user\username\Documents\myfile.txt"

Relative path: move to were you need from were you are one folder at a time.

We can use both these paths.


`touch` to make a file.

`nano` makes a file and allows us to insert text. | `crtl` x  to exit nano.

`cat` followed by file name allows us to see the contents of the file.

`mkdir` make directory

If you want spaces in your file name using `""` double quotes but it is not advisible.

### Command for copying files

`cp myfile.txt copied_file.txt` it also copies the contents of file.
`cp` (name of the file) space name of the file youre copying into
`cat` copied_file.txt
`cp` myfile.txt new_folder/copied_myfile.txt
`cd` new_folder
`ls` to check if it has copied - cat newcopied_myfile.txt

`vagrant@ubuntu-xenial:~/.ssh$ cp myfile.txt new_folder/copied_myfile.txt
vagrant@ubuntu-xenial:~/.ssh$ ls
authorized_keys  copied_file.txt  emptyfile.txt  myfile.txt  new_folder
vagrant@ubuntu-xenial:~/.ssh$` : this command allows us to copy a new file and then put it in a new folder

### Copying a folder

`cp -rf`
`cp -rf new_folder new_folder2` the rf stands for recursive copy anything inside the folders and the f stands for "forced"
`cd new_folder`
`rsync -r` new_folder new_folder2 (the outcome will be that the two folders are now combined it will make a third folder)

 `r` stands for recursive. means copy everything in the folder and contents and subfolders.

 `f` stands for force: even if it is being used or no permission, forcefully do it.

`cd ~`: this is called tilda

`ssh$ rsync -r new_folder new_folder2`: can synchronise files between systems.

`/.ssh$ mv myfile.txt new_folder/`: how to move a file to a folder.

`mv myfile2.txt ../new_folder`: allows us to move forward and move file forward.

`rm`: delete

`rm -rf`: to delete folder and all contents.

`man` followed by command will tell you what it can do.

`man -k` use a keyword and it will show you what it can do for you.

`grep` command to search for something.
We can specify a folder as well. 
`grep *` we can also specify certain files.

### Wildcard: `ls f*` allows us to see anything starting with specific word.

r- read
w- write
x- execute

Different set of permissions:
Owner:
Group: could be multiple people.
Others/All: everyone else

`ls -l testfile.txt` can check what permissions we have

`chmod u+x` then file name: change files mode bits; we can change permissions this way. 
`u`:means users
`g`:means group
`o`:means other

`chmod 777` gives permission to everyone.
https://chmod-calculator.com/ this link will give us which number to use for each permission level.

`top` task manager on linux not to great. But gives us the most real time update things running.

`ps` this comand is better and easier

`ps aux` will give us run down of the procceses running.

 `sleep 120 &`: 120 the time you want it to run for the & symbol run it in the background so we are not locked out. but if sleep is entered alone you will be locked out. 

`ps`

`kill 2498`: kills the process

`fg`: foreground
 `kill -9` kills really stubborn process

 `sudo pt install tree`
 makes it look like this:
 `vagrant@ubuntu-xenial:~/.ssh$ tree`
.
????????? authorized_keys
????????? emptyfile.txt
????????? new_folder
??????? ????????? copied_myfile.txt
??????? ????????? myfile.txt
??????? ????????? new_file.txt
????????? new_folder2
    ????????? copied_myfile.txt
    ????????? new_folder
        ????????? copied_myfile.txt
        ????????? new_file.txt


how to install node.js: `sudo apt-get install node.js` BUT if you need a particular version then you must do `sudo apt-get install python-software-properties` 

`sudo apt-get install python-software-properties`

`curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`  Commands to install particular version of a package

`sudo apt-get install nodejs -y`

`sudo npm install pm2 -g` how to instll pm2. 

After making sure the enviroment is set up by making sure we have all the packages.

## Making sure we have the correct enviroment:

We added 2 folders to our tech201_virtualisation folder that we had to unzip.

`config.vm.synced_folder "app", "/home/vagrant/app"`

after that,

`vagrant up`

open gitbash as admin: Everything MUST be opened as ADMIN

`vagrant ssh` using gitbash



`ls` once we have entered VM machine.


`cd app`

from vs bash terminal

cd environment x2

cd spec-tests

gem install bundler

bundle

rake spec

next we will install these things so that our environment is where we need it to be

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y = sudo systemctl start nginx

check web browser to make sure its working "http://192.168.10.100/"

rake spec

sudo apt-get install python-software-properties = we need a particular version

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - = once you install nodejs overwrite to this particular version

sudo apt-get install nodejs -y = this is the next step

nodejs -v = check the version

rake spec

we needed nodejs in order to get pm2

rake spec to check

cd app

cd app ls

npm install npm -v

node app.js

192.168.10.100:3000


### How to get your app up and running

First you need to `cd` into environment in vs code

if nested `cd` inot environment again

Then `cd` in spec-test

Now you need to hit `ls`

You should see the following C:\Users\belal\OneDrive\Documents\Devops\tech201_virtualisation\tech201_virtualisation\img_3.png

Run gem install bundler ruby testing framework img_4.png

Run bundle should only need to do it once

run rake spec this test your environment

sudo apt-get update -y

sudo apt-get upgrade - be careful with upgrade

Once you have done that run sudo apt-get install nginx

Run sudo systemctl enable nginx

Now at this point what you can do is check to see nginx is working for you using the ip address

Once all steps on rake spec are green go into app folder using cd app. Now npm install this is to install the app. node app.js this will run in the foreground and not allow you to do anything. once that is complete you should seeimg_5.png

This means that we have deployed our developers' application.

Finally, oyu need to go back to your browser and on the app you need to access it on port 3000. and once you do that you should see your working app.


 sudo apt-get install python-software-properties

 
curl -sl https://deb.nodesource.com/setup_6.x | sudo -E bash -



## Provisioning: 

- Create a file called "provision.sh"
- in this file you will have to enter the following commands

#!/bin/bash
^^^^^^^^^^^^^^^^^^^^^^^^^^^
#We need to make sure whatever system runs this knows what command it is doing

### notes: Update and Upgrade
sudo apt-get update -y #must put dash -y: we need to automate our response as there will be no one to say yes

sudo apt-get upgrade -y

### notes: Install nginx
sudo apt-get install nginx -y

### notes: Enable or start Nginx
sudo systemctl enable nginx -y


- Save it in the same location as your vagrantfile, it will make it easier.
then we go to the Vagrantfile enter this in the vagrant file.
vvvvvvvvvvvvvvvvvvvvvv
  config.vm.provision "shell", path: "provision.sh" #if in different folder specify path

  we will enter this at the bottom before `end`.

![Alt text](Screenshot%202023-02-09%20140143.png)

We then use vagrant up and then our machine should be running as long as we included
everything in our provision file. 

then we can `ssh vagrant` and go into our VM and `cd app/app/` to make sure it worked.

  this should work now.

  type ip address in the web browser 192.168.10.100 
and the this should appear.

![Alt text](nginx.png)

and it has worked.

<vagrant reload --provision>

Now I have added new pieces of code to the provision.sh as follows

#!/bin/bash

#We need to make sure whatever system runs this knows what command it is doing

# Update and Upgrade
sudo apt-get update -y #must put dash -y: we need to automate our response as there will be no one to say yes
sudo apt-get upgrade -y
# Install nginx
sudo apt-get install nginx -y
# Enable or start Nginx
sudo systemctl enable nginx -y

# download nodejs
curl -sL https://deb.nodesource.com/setup_6.x | 
sudo -E bash -sudo apt-get install nodejs -y

sudo npm install pm2 -g
npm install
# Entering
cd /app/app 

#install nodejs

node app.js

After this it should go straight to the sparta webpage as we have completely provisioned all apps that are necessary for this.
![Alt text](sparta.png)  



# Nginx reverse proxy

### What are ports:

Web server ports are the logical endpoints of a network connection that is used to exchange information between a web server and a web client. These ports are assigned a unique number to identify them separately. Port 80 and 443 are the two standard ports used by web servers to communicate with the web clients.

## #'What is a reverse proxy? How is it different to a proxy?

A reverse proxy is a server that sits between client devices and a web server, forwarding client requests to the web server and returning the server's responses back to the clients. It acts as an intermediary for incoming requests from clients seeking resources from a server and it can be used for a number of purposes, such as:

Load balancing: distributing incoming requests across multiple servers to balance the load and ensure high availability of a service.

SSL/TLS offloading: handling SSL/TLS encryption and decryption to relieve the web server of this processing overhead.

Caching: storing frequently-requested resources to speed up the response time and reduce the load on the web server.

Authentication and authorization: enforcing access controls and managing user authentication, often in conjunction with a separate authentication server.

A reverse proxy is different from a forward proxy (also known simply as a proxy), which sits between the client and the internet, forwarding requests from the client to the internet and returning the server's responses back to the client. In this case, the proxy acts on behalf of the client and the server has no knowledge of the proxy's presence.

So, in a reverse proxy, the client has no direct access to the server, while in a forward proxy, the server has no direct access to the client.

![Alt text](proxy%20and%20ports.jpg)

### What is Nginx's default configuration:

The default configuration of Nginx depends on the version and distribution you are using, but typically it includes basic settings to listen on port 80, serve content from the root directory at "/usr/share/nginx/html", and handle error pages. Here is an example of a basic default configuration:

### Vagrant 2
`Vagrant ssh app` and vagrant `ssh database`
cd OneDrive/Documents/Devops/tech201_virtualisation/tech201_virtualisation/

`vagrant destroy app` to specify what you would like to destroy.
`vagrant status`

MongoDB documentation important.
We need a key for Mongo DB

We update and upgrade on database

Don't use upgrade in a development enviroment. If our app is live and being used and we upgrade it could end up creating downtime. But update will just update internal packages and make sure we are connected to web.

0.0.0.0 : means any ip within any range can access it.

`printenv` : all variables running on the app VM
`export variable` followed by variable. Allows you to export it.
`.bashrc` here we can set permenant variables that won't be destroyed when we shutdown the Vagrant Machine. 

### Configuring Ngnix reverse proxy.

Very simple and straigh forward. `vagrant up` from gitbash or VS Studio