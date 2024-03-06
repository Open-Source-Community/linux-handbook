## Introduction to the Command Line
### What is the Shell?
When we speak of the command line, we are really referring to the shell. The shell is a
program that takes keyboard commands and passes them to the operating system to carry
out. Almost all Linux distributions supply a shell program from the GNU Project called
bash.
___
### Some Commands

* **echo** : Display a line of a text.  
**Syntax** : `echo text`.
```
 OSC@OSC:~$ echo Hello World
 Hello World
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
  >The "." notation refers to the working directory  
  
  > the working directory here is "usr"
  ```
  OSC@OSC:/usr/$ cd ./bin
 OSC@OSC:/usr/bin$ pwd
 /usr/bin
 ```
   
 > In almost all cases, we can omit the "./"  
 >For example:
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
 **Syntax** : `ls directory_name`
 ```. 
  OSC@OSC:~$ ls
 Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
 ```
 
 >Actually, we can use the ls command to list the contents of any directory, not just the
current working directory.  
* **cd** :  Change directory.  
To change our working directory (where we are standing in our tree-shaped maze) we use
the cd command.  
**Syntax** : `cd path_name(absolute or relative)`. 
``` 
 OSC@OSC:~$ cd /home/OSC/Downloads
 OSC@OSC:~/Downloads$
```
 >Now ,our working directory here is Downloads.
 ___
 ### Exploring Commands
 * **cat** : Display contents of a file.  
 **Syntax** : `cat file_name`.
 ```
  OSC@OSC:~/Documents$ cat myFile
  hello world
 ```
 
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