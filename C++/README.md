
C + +
=======

### The Basics - a simple need to know  
C++ is a *compiled* language, which means the Code you write gets translated into maschine-code by the *compiler*, so the computer can execute it. Let the compiler be `g++`, so the simplest call would look something like:  
``` bash
$ g++ robot.cc
```
This call creates a executable `a.out` from the `robot.cc` file, which we can exectue via `$ ./a.out`. Because these compiler calls can get very complex very quickly, smart people invented *Build systems*. 
One of them is called `Make`, which is rather complicated and needs a lot of effort to write once the project gets bigger. 
For this purpose we have *Meta-build-systems* like [CMake](CMake/), which generates a config file for other build systems (Makefile), according to the commands you specify in the `CMakeLists.txt`.  
The linux toolchain looks like this:
1. `CMake` -  generates a Makefile  
2. `make` -  generates compiler calls  
3. `g++` -  compiles the code to one or more executables  

To do this you simply need four commands:  
``` bash
$ mkdir build
$ cd build
$ cmake ..
$ make
```
CMake has a lot to do with **dependencies** once you include third-party libraries such as OpenCV. 
CMake will probably complain that it can't find the necessary libraries and/or the compiler yells at you. 
See [dependencies](dependencies.md) for information on how it works at RMC.  

### Example Project
[robot](robot/) is a very basic programm which prints some ascii art to the console. It's supposed to serve as a example.  

#### How to get this project
``` bash
$ git clone https://github.com/jusnelda/robots-and-coffee.git
$ cd C++/robot
$ rm -rf .git
$ cd ..
$ mv robot <your-path> (This step is optional)
$ cd <your-path/robot>
```

### Tools you might have to use
#### GDB
GDB is a debugger for C++, which helps you to find bugs in your code like segmentation faults etc.  
A pretty good cheatsheet is [this](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf "GDB Cheatsheet").  

To get you started use these commands: | Command  
-------------|----------  
Start your programm with gdb | `$ gdb robot`
Start your programm with command line arguments | `$ gdb --args robot <argument>`
Set a break point at line 42 | `(gdb) break 42` or `(gdb) b 42`
Set a break point in a file that's not the executable | `(gdb) break <full-path-to-file>:42`
Run the programm | `(gdb) run` or `(gdb) r`
Go into pretty mode | `(gdb) Ctrl+X+A`
Refresh pretty mode | `(gdb) Ctrl+L`
Catch exception or seg fault | `(gdb) Catch throw`
Display all available frames | `(gdb) backtrace`
Go up one frame | `(gdb) up`
Go down one frame | `(gdb) down`
Quit gdb | `(gdb) q`

#### Valgrind
Valgrind can help you find memory leaks in your code. Read the [man page](https://linux.die.net/man/1/valgrind) for further instructions  

The most useful commands are: | Command  
------------------------------|----------
Search for memory leaks when the client program finishes | `$ valgrind --leak-check=full robot` (this is also the default command)
Attach debugger to valgrind | `$ valgrind --vgdb=yes`

### Useful links and literature
**Videos**  
* [CppCon 2016: Greg Law “GDB - A Lot More Than You Knew"](https://www.youtube.com/watch?v=-n9Fkq1e6sg&feature=youtu.be)  
* [CppCon 2017: Kate Gregory “10 Core Guidelines You Need to Start Using Now”](https://www.youtube.com/watch?v=XkDEzfpdcSg)  
* [CppCon 2017: Louis Brandy “Curiously Recurring C++ Bugs at Facebook”](https://www.youtube.com/watch?v=lkgszkPnV8g)  

**Help and Guidance**  
* [C++ Reference](http://en.cppreference.com/w/)  
* [CppCoreGuidelines](https://github.com/isocpp/CppCoreGuidelines)  

**Online-Compiler**  
* [Cpp Shell](http://cpp.sh/)  
* [Godbolt Compiler Explorer](https://godbolt.org/)  

**Literature**  
* [A Tour of C++](http://www.stroustrup.com/Tour.html) 
