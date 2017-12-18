
All About Shells
================

A shell is just another word for: Command line, Terminal, Console, cmd, etc...  
There are various ways to open a shell, a basic linux system usually comes with 3 - 5 different "viewers", e.g. 'Konsole', 'Terminal', 'XTerm', 'Mate Terminal', 'LXTerminal', 'XfceTerminal', 'Terminator' - to name just a few.   
On Mac you'll find your 'Terminal' and on Windows it's 'cmd' or if you're lucky 'Powershell' (Unfortunately I barely have experience with Windows shells, but I'll include it over time).  
Most of the commands you'll find in the [Cheatsheet](bash_cheatsheet.md) will work on Mac, sometimes they differ a little bit, but a quick search will reveal the right command.  
If you choose to use **ZSH** than all of the commands are the same, except for the package manager ([APT](https://en.wikipedia.org/wiki/APT_(Debian)) on Debian Linux(Ubuntu), Thirdparty [Homebrew](https://brew.sh/) for macOS). 

### Bash
* Bash is usually the standard shell and is most of the times more than enough to work with. For additional functionality and themes and colors and fancy stuff, consider **ZSH**.  
> Bash is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell. First released in 1989, it has been distributed widely as the default login shell for most Linux distributions and Apple's macOS. A version is also available for Windows 10.   
[Wikipedia](https://en.wikipedia.org/wiki/Bash_(Unix_shell)).  
* Configuration in ~/.bashrc - [Example](.bashrc)  


### ZSH
* ZSH takes the useful features from shells like **Bash** and adds some more. 
* Some original features are:
  * Command-line completion  
  * Sharing of command history among all running shells  
  * Spelling correction  
  * Themeable prompts - themeable **everything**! Use [Oh My ZSH](http://ohmyz.sh/) to customize literally everything  
  > A user community website called "Oh My Zsh" collects third-party plug-ins and themes for the Z shell. As of 2017, their GitHub repository has over 1000 contributors, over 200 plug-ins, and over 140 themes. It also comes with an auto-update tool that makes it easier to keep installed plug-ins and themes updated.  
  [Wikipedia](https://en.wikipedia.org/wiki/Z_shell)
