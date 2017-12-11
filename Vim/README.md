
V I M  a quick start guide
============================

Vim is a command line editor.  
*In this repository we will only talk about Vim, not 'gvim' or any other kind of 'vimlike' editor*  
[History](https://en.wikipedia.org/wiki/Vim_(text_editor) "Wikipedia page")  


If you landed on this page, I'm assuming you kind of know what that is and you decided to give it a try. This is not meant to convice anyone to use vim or to even start one of the never ending fights about editors.  
The first time someone introduced me to vim, I wasn't ready for it at all, because I had very limited experience with the command line interface itself. Once I got used to that a bit more it was easier to understand how it all works.  
There are some situations where you have no choice but to use a command line editor. If you are not working with embedded systems, there is a good chance you'll never *have* to use one. Once you get used to it though there is something about it that makes you want to use it all the time.  
So here we go:  

### Installing VIM
On most systems vim is already installed, you can check that by `vim --version` or `which vim`.  
Follow the instructions on this [site](http://www.vim.org/download.php/) to install.  
Short version for Unix (There is a special MacVim for Mac-OS)  
```
git clone https://github.com/vim/vim.git
cd vim/src
make
```

### Using VIM  
If this is your first time using vim you should really start with the **vimtutor**, open a shell and simply type `vimtutor`.  
I created a cheatsheet, because in the beginning it is really hard to remember all the commands, you can find that [here](vim_cheatsheet.md)  
To customize vim the way you want it to, check out the [vimrc guide](vimrc.md)  

Alright, that is it so far! Have fun using vim! 

