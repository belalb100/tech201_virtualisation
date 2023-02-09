## Advanced Bash

### Vagrant creates a standard development enviroment for everyone to use.

Being able to interact with our virtual machine. No Graphic User Interface so we need commands.

Kernal

then security level

User mode: which is the shell or command line.

1. `uname` tells you what interface you are using.
2. `flag` what we give linux after a flag. We can use it in many ways to be more specific for example -y or -a. `uname --all` gives all the info.
`uname` -r -m -i -o -si -srpand many more.

`ls -a`: we can see hidden folders

`cd ../../` goes 2 back directories.

cd ~: goes back to your home directory

cd/ goes to back to root directorty. 

`ls` lists files and folders.
`ls -l` list the files and directory permisions.

Absolute path: Complete path to the said file.

Relative path: move to were you need from were you are.

We can use both these paths.



`touch` to make a file.

`nano` makes a file and allows us to insert text.

`cat` followed by file name allows us to see the contents of the file.

If you want spaces in your file name using `""` double quotes but it is not advisible.

command for copying files
`cp myfile.txt copied_file.txt` it also copies the contents of file.

`vagrant@ubuntu-xenial:~/.ssh$ cp myfile.txt new_folder/copied_myfile.txt
vagrant@ubuntu-xenial:~/.ssh$ ls
authorized_keys  copied_file.txt  emptyfile.txt  myfile.txt  new_folder
vagrant@ubuntu-xenial:~/.ssh$` : this command allows us to copy a new file and then put it in a new folder

 `r` stands for recursive. means copy everything in the folder and contents and subfolders.

 `f` stands for force: even if it is being used or no permission, forcefully do it.

cd ~: this is called tilda

ssh$ rsync -r new_folder new_folder2: can synchronise files between systems.

/.ssh$ mv myfile.txt new_folder/: how to move a file to a folder.

mv myfile2.txt ../new_folder: allows us to move forward and move file forward.

`rm`: delete

`rm -rf`: to delete folder and all contents.

`man` followed by command will tell you what it can do.

`man -k` use a keyword and it will show you what it can do for you.

`grep` command to search for something.
We can specify a folder as well. 
`grep *` we can also specify certain files.

while card: `ls f*` allows us to see anything starting with specific word.

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
├── authorized_keys
├── emptyfile.txt
├── new_folder
│   ├── copied_myfile.txt
│   ├── myfile.txt
│   └── new_file.txt
└── new_folder2
    ├── copied_myfile.txt
    └── new_folder
        ├── copied_myfile.txt
        └── new_file.txt


how to install node.js: `sudo apt-get install node.js` BUT if you need a particular version then you must do `sudo apt-get install python-software-properties` 

`sudo apt-get install python-software-properties`

`curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`  Commands to install particular version of a package

`sudo apt-get install nodejs -y`

`sudo npm install pm2 -g` how to instll pm2. 

After making sure the enviroment is set up by making sure we have all the packages.

## Making sure we have the correct enviroment:

we added two folders in the same folder as our vm app and environment what we want to sync and where we want to put it

config.vm.synced_folder "app", "/home/vagrant/app"

then

vagrant up

then open gitbash as admin

vagrant ssh = from git bash

once your in ubuntu

ls

this shows app

cd app

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