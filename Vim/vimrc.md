
V I M R C - Why and most importantly what?
==========================================

### 0. Before you start
If you opened this file, I'm assuming you already know what vim is and you are sure it is installed. If the answer is no - start [here](README.md).

### 1. What is a **rc-file** and what does *rc* stand for?
Citing [this](http://www.faqs.org/docs/artu/ch10s03.html#id2941902) 'rc' stands for "runcom", to understand what that means we have to hop onto the way back train and learn about stuff before Unix even existed... Feel free to play the wikipedia game, start [here](https://en.wikipedia.org/wiki/Configuration_file#UNIX.2FLinux).
The short answer is, that **rc-files** are nothing more than **config** files.
Now, a config file is, simpy put, the same as those pretty little buttons in your iPhone settings.
Only instead of buttons and all kinds of interactive clicks, tabs and slides you have plain text.
Sounds pretty boring and so it is. So why would anyone bother with or even prefer a config/rc-file over a shiny settings app?
The answer, like most of the stuff in this repository, is part real reason and part silly nerd opinion.

So - maybe at some point you will encounter a situation where you're using a shell/terminal/command line/console and you think, "Oh, wouldn't it be great if it could do *this* or *that*?
And by the way, I don't like these colors at all."
There you go, now you're going to have to start putting a line or two in the **rc**-file of your [shell](../Shells).  You can find how this works exactly [here](../Shells/README.md)
The `vimrc` is just the config file for vim. You write some code, to improve the way your code is displayed and to make it easier and more fun for you to write your code or whatever you're using this editor for.

### 2. Where do I find this magic file for vim?
You will find your `.vimrc` either in your home directory (open a shell and type `cd`) if you type `ls -a` there is a file called `.vimrc` - or you don't have one yet.

  * If you don't have on yet:
    1. You can either just copy mine into your home directory, maybe even download all the [plugins](vim_plugins.md) I have too and go ahead and start figuring out how vim works - or
    2. You copy the [minimalist version](minimal/.vimrc) without any plugins, themes or fancy stuff and use this as a solid base to improve upon - or
    3. You start writing your very own `.vimrc` from the very beginning using my suggestions only as an inspiration

  * If you already have a `.vimrc` file, make sure you understand what **all** of this means and force yourself to write comments to every configuration. If you don't know or aren't sure, delete the line in question or start googleing right know. - Thank me later.

### 3. Why use it at all?
It will make your experience and work flow so much easier and faster than you can imagine. Once you've been using vim for a while, you'll start noticing some things you didn't know you missed in other editors.
The `.vimrc` is just a tool to make vim behave exactly the way you want it to. This will change over time and so will your `.vimrc`.
It will grow as you change your habits or start writing all different kinds of code/text in vim.
I'm revisiting mine at least once a week, because something needs to adapt to my needs or because I changed my mind about a configuration, that I no longer find useful.


