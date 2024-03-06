# 📂Creating Directories

* **`mkdir DirectoryName`**

This command will create a new directory, provided it doesn't exists.

>**Example :** Create a new directory his name is **Test**.

```
osc@osc:~$ mkdir Test 
```

* **`mkdir -p Directory/SubDirectory1/SubDirectory2`**

This command will create nested directories.

>**Example:**  Create nested directories, **world** directory which is inside the **hello** directory which is inside the **program** directory.

```
osc@osc:~$ mkdir -p program/hello/world
```

---
# 📄**Creating Files**


* **`touch fileName`**

This command will create a new file.

>**Example :** Create a new files file1.txt , file2.txt , file3.txt.

```
osc@osc:~$ touch file1.txt file2.txt file3.txt
```

---
# Renaming & Moving Files

* **`mv filename DirectoryDestination `** 

This command can move a file to a new location.
> **Example:** Move **file1** into the **Test** directory.
```
osc@osc:~$ mv file1 test
```
* **`mv oldFile newFile `** 

This command is also used to rename files and directories. In essence, moving and renaming are both just adjusting the location and name for an existing item.
> **Example:** Rename **file1.txt** into the **file2.txt** .
```
osc@osc:~$ mv file1.txt file2.txt
```
---
# 📑Copying Files & Directories

`mv` command, you could move or rename a file or directory, but you could not duplicate it. 
*  **`cp SourceFile CopyFile`** 

This command can make a new copy of an existing item
  
>**Example :** copy **source.txt** file to a new file called **copy.txt**.

```
osc@osc:~$ cp source.txt copy.txt
```
* **`cp -r SourceDir CopyDir`**

Copy entire directories, you must include the -r option to the command. This stands for “recursive”, as it copies the directory, plus all of the directory’s contents.

>*Example :* Copy the **test1** directory structure to a new structure called **test2**

```
osc@osc:~$ cp -r test1 test2
```
---
# 📤 Removing Directories & Files


| *Command* | *Description*📝 |
| ---- |----|
| **`rm filename`** |Deletes a file|
| **`rm -f filename`** |Deletes by force and don't prompt the user|
| **`rm -r DirectoryName`** |Deletes a non-empty directory| 
| **`rm -d directory_name`**|Deletes an empty directory|



---

# Getting Help !!

- **`man [options] [command]`**

This command can display the manual pages (documentation) for various commands and utilities. It provides information about the command's syntax, options, usage, and often includes examples. 

>**Example:** View the manual page for the **ls** command (which lists directory contents).

```
osc@osc:~$ man ls
```
- **`apropos`**
    - Apropos will list several commands that match the keyword you used. 
    - The list includes a short description of what the command does,works by looking through the entire description sections of the man pages for the matching keyword you provide with the apropos command.
    - The word apropos is derived from the French word "à propos" which means **"about."**
> **Example:** Let's assume you want to copy a file but do not know which command to use. Simply use the apropos command followed by the task you want to complete.
```
osc@osc:~$ apropos copy
```
* **`--help`**

Most commands have the `--help` command argument or option. You can use it to display helpful information about how a command is used and its arguments in a simplified manner.

>**Example:** get more help on the **cp** command.
```
osc@osc:~$ cp --help
```