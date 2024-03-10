# Chapter 4: Understanding the File System 

- In Linux, most of the operations are performed on files. And to handle these files Linux has directories also known as folders which are maintained in a tree-like structure. Though, these directories are also a type of file themselves. 
  
- *Linux has 3 types of files:*
    - **Regular Files:** It is the common file type in Linux. it includes files like – text files, images, binary files, etc. Such files can be created using the `touch command`. They consist of the majority of files in the Linux/UNIX system. The regular file contains ASCII or Human Readable text, executable program binaries, program data and much more.
    - **Directories:** These are the files that store the list of file names and the related information. `The root directory(/)` is the base of the system, `/home/` is the default location for user’s home directories, /bin for Essential User Binaries, `/boot` – Static Boot Files, etc. We could create new directories with `mkdir command`.
   - **Special Files:** Represents a real physical device such as a printer which is used for IO operations. Device or special files are used for device Input/Output(I/O) on UNIX and Linux systems. You can see them in a file system like an ordinary directory or file.
  
# Creating Directories

**1. `mkdir DirectoryName`**

- This command will create a new directory, provided it doesn't exists.
>
- You can create a new directory his name is **Test** by typing :

    ```
    osc@osc:~$ mkdir Test 
    ```

**2. `mkdir -p Directory/SubDirectory1/SubDirectory2`**

- This command will create nested directories.
>
- You can reate nested directories, **world** directory which is inside the **hello** directory which is inside the **program** directory by typing:

    ```
    osc@osc:~$ mkdir -p program/hello/world
    ```

---
# **Creating Files**

**`touch fileName`**

- This command will create a new file.
>
- To Create a new files file1.txt , file2.txt , file3.txt , you can type:

    ```
    osc@osc:~$ touch file1.txt file2.txt file3.txt
    ```

---
# Renaming & Moving Files

**1. `mv filename DirectoryDestination `** 

- This command can move a file to a new location.
>
- Move **file1** into the **Test** directory , by typing :
>
```
osc@osc:~$ mv file1 Test
```

- You can move that file back to your home directory by using the **special dot reference** to refer to the current directory. Make sure you’re in your home directory, and then run the mv command:
>
```
osc@osc:~$ cd
osc@osc:~$ mv test/file1 . 
```
**2. `mv oldFile newFile `** 

- This command is also used to rename files and directories. In essence, moving and renaming are both just adjusting the location and name for an existing item.
>
- You can rename **file1.txt** into the **file2.txt** by typing: 
>
```
osc@osc:~$ mv file1.txt file2.txt
```
---
# Copying Files & Directories

`mv` command, you could move or rename a file or directory, but you could not duplicate it. 

**1. `cp SourceFile CopyFile`** 

- This command can make a new copy of an existing item
>
- *The following command*,Copy **source.txt** file to a new file called **copy.txt**.
>
```
osc@osc:~$ cp source.txt copy.txt
```
**2. `cp -r SourceDir CopyDir`**

- Copy entire directories, you must include the `-r option` to the command. This stands for “recursive”, as it copies the directory, plus all of the directory’s contents.

- *The following command*, Copy the **test1** directory structure to a new structure called **test2**

```
osc@osc:~$ cp -r test1 test2
```
---
# Removing Directories & Files

**1) `rm filename`**

- this command could be used to delete a file. 
>
- To remove **test** file from the directory, you can type:
>
```
osc@osc:~$ rm test 
```
**2) `rmdir directoryname`**

- Remove empty directories, this will only succeed if there is nothing in the directory in question. Let's remove **example** directory within the **testing** directory:
>
```
osc@osc:~$ rmdir testing/example 
```

**3) `rm -r directoryname`**
- To remove a *non-empty* directory, you will use the rm command with the -r option, which removes all of the directory’s contents recursively, plus the directory itself.
>
- To remove the **Testing** directory and everything within it, you can type:

```
osc@osc:~$ rm -r Testing
```
>
| *Command* | *Description* |
| ---- |----|
| **`rm filename`** |Deletes a file|
| **`rm -f filename`** |Deletes by force and don't prompt the user|
| **`rm -r DirectoryName`** |Deletes a non-empty directory| 
| **`rm -d directory_name`**|Deletes an empty directory|



---

# Getting Help

**1) `man [options] [command]`**

- This command can display the manual pages (documentation) for various commands and utilities. It provides information about the command's syntax, options, usage, and often includes examples. 

- So let's view the manual page for the **ls** command (which lists directory contents), by typing:
>
```
osc@osc:~$ man ls
```
![alt text](<CH4 images/man command.png>)

**2) `apropos`**
- Apropos will list several commands that match the keyword you used. 
>
- The list includes a short description of what the command does,works by looking through the entire description sections of the man pages for the matching keyword you provide with the apropos command.
>
- The word apropos is derived from the French word "à propos" which means **"about."**
 Let's assume you want to copy a file but do not know which command to use. Simply use the apropos command followed by the task you want to complete.
>
```
osc@osc:~$ apropos copy
```
>
**3) `--help`**

Most commands have the `--help` command argument or option. You can use it to display helpful information about how a command is used and its arguments in a simplified manner.

Get more help on the **cp** command by typing:
```
osc@osc:~$ cp --help
```
![alt text](<CH4 images/--help command.png>)
