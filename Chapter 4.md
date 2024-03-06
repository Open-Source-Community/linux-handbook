# 📂Create Directories

* **`mkdir DirectoryName`**
This command will create a new directory, provided it doesn't exists.

*Example :* Create a new directory his name is Test.

> Osc@Osc:~$ mkdir Test

* **`mkdir -p Directory/SubDirectory1/SubDirectory2`**

This command will create nested directories.

*Example:*  Create nested directories, **world** directory which is inside the **hello** directory which is inside the **program** directory.

>Osc@Osc:~$ mkdir -p program/hello/world

---
# 📄**Creating Files**


* **`touch fileName`**
This command will create a new file.

>Example :
>Create a new files file1.txt , file2.txt , file3.txt.
![alt text](<Images/touch files.png>)

---
# Renaming & Moving Files
`mv `comm
---
# Copying Files & Directories

With the `mv` command, you could move or rename a file or directory, but you could not duplicate it. 
*  `cp SourceFile CopyFile` 
This command can make a new copy of an existing item
  
>*Example :* 
>
>copy `source.txt` file to a new file called `copy.txt`.
>
>![alt text](<Images/copy files.png>)

* `cp -r SourceDir CopyDir`
Copy entire directories, you must include the -r option to the command. This stands for “recursive”, as it copies the directory, plus all of the directory’s contents.

>*Example :*
>Copy the `test1` directory structure to a new structure called `test2`
![alt text](<Images/copy dir.png>)

---
# Removing Directories & Files


| *Command* | *Description*📝 |
| ---- |----|
| **`rm filename`** |Deletes a file|
| **`rm -f filename`** |Deletes by force and don't prompt the user|
| **`rm -r DirectoryName`** |Deletes a non-empty directory| 
| **`rm -d directory_name`**|Deletes an empty directory|

![alt text](<Images/delete dir.png>)

---

# Getting Help !!

* **`man`**
* **`apropos`**
Apropos will list several commands that match the keyword you used. The list includes a short description of what the command does.works by looking through the entire description sections of the man pages for the matching keyword you provide with the apropos command
The word apropos is derived from the French word "à propos" which means **"about."**
* **`--help`**