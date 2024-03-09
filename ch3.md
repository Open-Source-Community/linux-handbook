## Introduction to the Command Line
### What is the Shell?
When we speak of the command line, we are really referring to the shell. The shell is a
program that takes keyboard commands and passes them to the operating system to carry
out. Almost all Linux distributions supply a shell program from the GNU Project called
bash.
___
### Some Commands

* **echo** : Display a line of a text.  
**Syntax** : echo [option] [text]    
```
 OSC@OSC:~$ echo Hello World
 Hello World
 ```

| Command                  | Description |
|--------------------------|-------------|
| `echo "text" > filename` | redirects the output of echo to a specific file creating the file if it does not exist and overwriting it if it does.|
|`echo "text" >> filename`|appends the text to a specific file| 

|Option |Usage|
|--------|-----|
|-n |    do not output the trailing newline|
|-e|  enable interpretation of backslash escapes|
| -E  |   disable interpretation of backslash escapes (default)|  
```
OSC@OSC:~$ echo -n "Hello, "
echo "World!"
Hello, World!
```
```
OSC@OSC:~$ echo -e "Hello\nWorld"
Hello
World
```
```
OSC@OSC:~$ echo -E "Hello\nWorld"
Hello\nWorld
```



* **clear** : Clear the screen.   
**Syntax** : `clear`.

Before:
```
 OSC@OSC:~$ echo Hello World
 Hello World
 OSC@OSC:~$ clear
 ```
  
After:
```
 OSC@OSC:~$ 



 ```



___
### Navigation Commands
#### Absolute & Relative Paths
##### Absolute Path :  
An absolute pathname begins with the root directory and follows the tree branch by branch until the path to the desired directory or file is completed.  
For example, there is a directory on our system in which most of our system's programs are installed. The directory’s pathname is /usr/bin. This means from the root directory (represented by the leading slash in the pathname) there is a directory called "usr" which contains a directory called "bin".
```
 OSC@OSC:~$ cd /usr/bin
 OSC@OSC:/usr/bin$ pwd
 /usr/bin
 OSC@OSC:/usr/bin$
 ```

##### Relative Path :
 Where an absolute pathname starts from the root directory and leads to its destination, a relative pathname starts from the working directory.  
  * The "." notation refers to the working directory and the ".." notation refers to the working directory's parent directory.  
  
  *  the working directory here is "usr"
  ```
  OSC@OSC:/usr/$ cd ./bin
 OSC@OSC:/usr/bin$ pwd
 /usr/bin
 ```
   
 *  In almost all cases, we can omit the "./"  
 ```
  OSC@OSC:/usr/$ cd bin
 OSC@OSC:/usr/bin$ pwd
 /usr/bin
 ```

 ___
 ### Some Commands
 * **pwd** : Prints the absolute path of the current working directory.  
 **Syntax** : `pwd`.  

```  
  OSC@OSC:~/Downloads$ pwd
  /home/OSC/Downloads
 ```



 
   
 * **ls** : List directory contents.  
 **Syntax** : `ls [option] [file]`
 ```. 
  OSC@OSC:~$ ls
  Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
 ```
 * Besides the current working directory, we can specify the directory to list:
 ```
 OSC@OSC:~$ ls /home
 OSC
 ```
 | Option | Usage |
|--------|-------|
|-l|displays detailed information about files|
|-a|list all files including the hidden files|
|-t|Sort files by modification time, with the newest files appearing first|
|-r|Reverse the order of the sort to display files in reverse order|
|-S|Sort files by size, with the largest files appearing first|
 
* **cd** :  Change directory.  
To change our working directory (where we are standing in our tree-shaped maze) we use
the cd command.  
**Syntax** : `cd path_name(absolute or relative)`. 
``` 
 OSC@OSC:~$ cd /home/OSC/Downloads
 OSC@OSC:~/Downloads$
```
 * Now ,our working directory here is Downloads.

 | Command | Usage |
|--------|-------|
| `cd ..` | Change the current working directory to the parent directory of the current directory|
| `cd` | Change the working directory to your home directory|
|`cd -` |Changes the working directory to the previous working directory|
|`cd ~user_name` |Changes the working directory to the home directory of user_name|
 ___
 ### Exploring Commands
 * **cat** : Display contents of a file,concatenate files and print on the standard output.  
 **Syntax** : `cat [option] [file]
`.
 ```
  OSC@OSC:~/Documents$ cat myFile
  hello world
 ```
 | Option | Usage |
|--------|-------|
|-n| Number the lines of the output|
|-s| suppress repeated empty output lines|
|-E| Display a dollar sign ($) at the end of each line|

 
 * **file** : Determine file type.   
 **Syntax** : `file file_name`.
 ```
  OSC@OSC:~/Documents$ file myFile
  myFile: ASCII text
 ```
     
 * **type** :it is used to find out whether it is built-in or external binary file.  
 **Syntax** : type file_name.  
 ```
  OSC@OSC:~$ type cd
  cd is a shell builtin
 ```