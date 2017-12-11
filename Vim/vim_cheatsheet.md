
Vim Cheatsheet
===============

To get to know vim a little it's always good to do the **vimtutor**, just type `vimtutor` in your favorite shell.  

### General  

What it does | Command 
-------------|----------
Undo | `u`
Redo | `Ctrl-r`
Repeat last command | `.`
Jump to line 42 | `:42`


### Exiting and saving

What it does | Command | Alternatives | What I mapped it to  
-------------|---------|--------------|--------------------  
Write (save) the file, but don't exit | `:w` | - | `\w`   
Write (save) and quit | `:wq` | `:x` | `\q`  
Quit (fails if anything has changed) | `:q` - 
Quit and throw away changes | `:q!` | `ZZ`  

### Cursor Movement  

What it does | Command 
-------------|----------
Left, down, up, right | `h`, `j`, `k`, `l`
Jump by start of words | `w` 
Jump by words | `W` 
Jump to end of words | `e`  
Jump backward by words | `b`  
Start of line | `0`  
End of line | `$`  
Go to the top | `gg` 
Go to the bottom | `G` 
Move up half a page | `Ctrl-u`  
Move down half a page | `Ctrl-d` 


### Insert/Appending/Editing Text  

What it does | Command 
-------------|----------
Start insert mode at cursor | `i`
Exit insert mode | `Esc` (*I also mapped it to `jj`*)
Insert at the beginning of the line | `I`
Append after the cursor | `a` 
Append at the end of the line | `A`
Start new line below current line | `o`
Start new line above current line | `O`
Replace character under cursor | `r`
Switch (lower, upper) case | `~`


### Mark, Delete, Change, Copy and Paste

What it does | Command 
-------------|----------
Start visual mode | `v`
Start visual mode linewise | `V`
Exit visual mode | `Esc`
Copy marked text | `y`
Copy line | `yy` or `Y`
Paste after cursor | `p`
Paste befor cursor | `P`
Delete current character | `x`
Delete marked text | `t`
Delete marked text and go into insert mode (change) | `c`
Delete current line | `dd`
Change word | `ciw`


### Search and Replace

What it does | Command 
-------------|----------
Search for xxx | `/xxx`
Show next occurence of xxx | `n`
Replace all old with new throughout file | `:%s/old/new/g`


### Working with more files

What it does | Command 
-------------|----------
Edit a file | `:e filename`
Open file in a new tab | `:tabe filename`
Go to next tab | `gt`
Go to previous tab | `gT`
Open another file in split screen (vertical) | `:vsplit filename`
Open another file in split screen (horizontal) | `:split filename`
Switch to file (window) in split screen | `Ctrl-ww`

*Stripped down copy from [vimsheet](http://vimsheet.com/ "Vimsheet.com")*
