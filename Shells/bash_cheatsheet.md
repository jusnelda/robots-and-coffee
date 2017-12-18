
Bash Cheatsheet
===============

To see what shell your in type `echo $SHELL`.  

### General - Basic Moving Around  

What it does | Command 
-----------------------------------------|----------------------
List your files | `ls`
List your files with more info | `ll`
List your files with hidden files | `l`
Go to home directory | `cd`
Go to <*directory*> | `cd <directory>`
Go up a directory | `cd ..`
Tells you, where you currently are | `pwd`
Last commands | Arrow key up
Backwards search in command history | `Ctrl+R`
Create (Make) <*directory*> (Folder) | `mkdir <directory>`
Create a file | `touch <file>`
Copy a <*directory*> | `cp -r <directory>`
Copy a <*file*> | `cp <file>`
Delete a <*directory*> | `rm -r <directory>`
Delete a <*file*> | `rm <file>`
Move or rename <*directory*> or <*file*> | `mv <file> <newfile>`
Show a <*file*> | `cat <file>`
Show command history | `cat ~/.bash_history`


### General - Editing a File  

If you are already experienced with command line editors, this is too easy for you. Go ahead and check out the [Vim](../Vim) Section  

What it does | Command
--------------------------------------------------------------|--------------
Open a textfile with **nano**, the simple command line editor | `nano <file>`
Move around | Arrow keys
Save | `Ctrl+O`
Save and exit | `Ctrl+X`

### General - More File Commands  

What it does | Command
---------------------------------------------------------------------------------------------|----------------------
Lets you change the read, write, and execute [permissions](../good_to_know.md) on your files | chmod -options <file>
Compares two files | `diff <file1> <file2>`
Compares two files and displays them side-by-side | `sdiff <file1> <file2>`
Compress <*file*> | `gzip <filename>`
Umcompress gziped files | `gunzip <filename>`
Clear/Hide content on window | `clear` or `Ctrl+L`
Run application, script etc. | `./<file>`
Run in the background (and dump into current shell) | `./<file> &`
Get it back into the foreground | `fg`


A more advanced cheatsheet is to be found [here](https://github.com/LeCoupa/awesome-cheatsheets/blob/master/languages/bash.sh)


