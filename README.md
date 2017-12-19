Robots and Coffee
=================

Hi there, this repository has been created to make your life easier. It is meant for everyone who is kind of new to programming using a command line interface and is - like I was - confused by it all.  
So here I will share the stuff I've learned and hopefully give you a headstart, so you can save hours of googling confusing answers to questions, that you don't really understand in the first place.  

All of the tutorials, cheatsheets and tipps and tricks are mostly for Linux Systems. MacOS is a *Unix-like* System, which means it will work *almost* the same, if it differs, I'll try to include the alternative. 

* You can find information about shells/terminal/console [here](Shells)  
* Vim Editor Fun can be found [here](Vim)  

![Coffee](https://imgs.xkcd.com/comics/coffee.png)

### Good to know  

Random stuff I encounter in my workflow which is - good to know  

* **.nfsxxxx** files  
 ...if a file is removed, that a currently running process still has open, the file is not really removed. It will be automatically removed once the process closes the file.  

* **Linux Permissions**  
Just add up the numbers to get types of permissions:  
1 = 1 -> execute  
2 = 2 -> write  
3 = 2 + 1 -> write/execute  
4 = 4 -> read  
5 = 4 + 1 -> read/execute  
6 = 4 + 2 -> read/write  
7 = 4 + 2 + 1 -> read/write/execute  

```
chmod 666 mydoc.txt //read/write by anybody  
chmod 755 mydoc.txt //rwx for owner, rx for group rx for the world  
chmod 777 mydox.txt //read, write, execute for all!
```
