## Advanced Bash

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