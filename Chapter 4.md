# Understanding the File System

In Linux, most of the operations are performed on files. And to handle these files Linux has directories also known as folders which are maintained in a tree-like structure. Though, these directories are also a type of file themselves.

Linux has 3 types of files:

- **Regular Files:** It is the common file type in Linux. it includes files like – text files, images, binary files, etc. Such files can be created using the `touch` command. They consist of the majority of files in the Linux/UNIX system. The regular file contains ASCII or Human Readable text, executable program binaries, program data and much more.

- **Directories:** These are the files that store the list of file names and the related information. The root directory `/` is the base of the system, `/home/` is the default location for user’s home directories, /bin for Essential User Binaries, `/boot` – Static Boot Files, etc. We could create new directories with `mkdir` command.

- **Special Files:** Represents a real physical device such as a printer which is used for IO operations. Device or special files are used for device Input/Output on UNIX and Linux systems. You can see them in a file system like an ordinary directory or file.

## Creating Directories

`mkdir [OPTION] DIRECTORY`
: Creates a new directory, provided it doesn't exists.

You can create a new directory his name is `Test`:

```bash
osc@osc:~$ mkdir Test
```

`mkdir -p Directory/SubDirectory1/SubDirectory2`
: This command will create nested directories.

You can reate nested directories, `world` which is inside the `hello` which is inside the `program`:

```bash
osc@osc:~$ mkdir -p program/hello/world
```

## Creating Files

`touch FILE`
: This command will create a new file.

To Create a new files `file1.txt` , `file2.txt` , `file3.txt`:

```bash
osc@osc:~$ touch file1.txt file2.txt file3.txt
```

## Renaming & Moving Files

`mv [OPTION] SOURCE DESTINATION`
: Moves a file to a new location.

Move `file1` into the `Test` directory:

```bash
osc@osc:~$ mv file1 Test
```

You can move that file back to your home directory by using the **dot reference** `.` to refer to the current directory. Make sure you’re in your `home` directory, and then run the `mv` command:

```bash
osc@osc:~$ mv test/file1 .
```

Moving and renaming are both just adjusting the location and name for an existing item.

You can rename `file1.txt` into the `file2.txt`:

```bash
osc@osc:~$ mv file1.txt file2.txt
```

## Copying Files & Directories

`cp [OPTION] SOURCE DESTINATION`
: Makes a new copy of an existing item.

*The following command*, Copies `source.txt` contents to a new file called `copy.txt`.

```bash
osc@osc:~$ cp source.txt copy.txt
```

`cp -r SOURCE_DIRECTORY DESTINATION`
: Copies entire directories

- You must include the `-r` option to the command. This stands for “recursive”, as it copies the directory, plus all of the directory’s contents.

*The following command*, Copies the `test1` directory structure to a new structure called `test2`.

```bash
osc@osc:~$ cp -r test1 test2
```

## Removing Directories & Files

`rm [OPTION] FILE`
: Deletes a file.

To remove `test` file from the directory:

```bash
osc@osc:~$ rm test
```

`rmdir [OPTIONS] DIRECTORY`
: Removes empty directories.

- This will only succeed if there is nothing in the directory in question. Let's remove `example` directory within the `test` directory:

```bash
osc@osc:~$ rmdir test/example
```

`rm -r DIRECTORY`
Removes a **non-empty** directory.

To remove the `test` directory and everything within it:

```bash
osc@osc:~$ rm -r test
```

| Command | Description |
|---------|-------------|
| `rm FILE` | Deletes a file. |
| `rm -f FILE` | Deletes by force and don't prompt the user. |
| `rm -r DIRECTORY` | Deletes a non-empty directory. |
| `rm -d DIRECTORY` | Deletes an empty directory. |

## Getting Help

`man [OPTIONS] [COMMAND]`
: Displays the manual pages for various commands and utilities.

It provides information about the command's syntax, options, usage, and often includes examples.

So let's view the manual page for the `ls` command:

```.
osc@osc:~$ man ls
LS(1)    User Commands    LS(1)

NAME
       ls - list directory contents

SYNOPSIS
       ls [OPTION]... [FILE]...

DESCRIPTION
       List information about the FILEs (the current directory by default).  Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

       Mandatory arguments to long options are mandatory for short options too.

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..
...
```

`apropos`
: Lists several commands that match the keyword you used.

The list includes a short description of what the command does, works by looking through the entire description sections of the man pages for the matching keyword you provide with the apropos command.

The word apropos is derived from the French word "à propos" which means "about".

Let's assume you want to copy a file but do not know which command to use. Simply use the apropos command followed by the task you want to complete.

```.
osc@osc:~$ apropos copy
copy_file_range (2)  - Copy a range of data from one file to another
copysign (3)         - copy sign of a number
copysignf (3)        - copy sign of a number
copysignl (3)        - copy sign of a number
cp (1)               - copy files and directories
...
```

`--help`
: Displays helpful information about how a command is used and its arguments in a simplified manner.

- Most commands have the `--help` command argument or option.

Get more help on the **cp** command by typing:

```.
osc@osc:~$ cp --help
Usage: cp [OPTION]... [-T] SOURCE DEST
  or:  cp [OPTION]... SOURCE... DIRECTORY
  or:  cp [OPTION]... -t DIRECTORY SOURCE...
Copy SOURCE to DEST, or multiple SOURCE(s) to DIRECTORY.

Mandatory arguments to long options are mandatory for short options too.
  -a, --archive                same as -dR --preserve=all
      --attributes-only        don't copy the file data, just the attributes
      --backup[=CONTROL]       make a backup of each existing destination file
  -b                           like --backup but does not accept an argument
      --copy-contents          copy contents of special files when recursive
...
```
