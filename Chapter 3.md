# Introduction to Command Line

## What is the Shell?

When we speak of the command line, we are really referring to the shell. The shell is a program that takes keyboard commands and passes them to the operating system to carry out. Almost all Linux distributions supply a shell program from the GNU Project called bash.

## Basic Commands

`echo [OPTION] [STRING]`
: Display a line of a text.

```bash
osc@osc:~$ echo Hello World
Hello World
```

| Command | Description |
|---------|-------------|
| `echo "text" > FILE`  | Redirects the output of echo to a specific file,  creating the file if it does not exist and overwriting it if it does. |
| `echo "text" >> FILE` | Appends the text to a specific file. |

| Option | Usage |
|--------|-------|
| `-n` | Do not output the trailing newline. |
| `-e` | Enable interpretation of backslash escapes. |
| `-E` | Disable interpretation of backslash escapes. (default) |

```bash
osc@osc:~$ echo -n "Hello, "
echo "World!"
Hello, World!
```

```bash
osc@osc:~$ echo -e "Hello\nWorld"
Hello
World
```

```bash
osc@osc:~$ echo -E "Hello\nWorld"
Hello\nWorld
```

`clear`
: Clears the screen.

```bash
osc@osc:~$ echo Hello World
Hello World
osc@osc:~$ clear
```

Output:

```bash
osc@osc:~$



```

## Navigation Commands

### Absolute Path

An absolute path begins with the root directory `/` and follows the tree branch by branch until the path to the desired directory or file is completed.

For example, there is a directory on our system in which most of our system's programs are installed. The directory’s path is `/usr/bin`. This means from the root directory (represented by the leading slash in the path `/`), there is a directory called `usr`, which contains a directory called `bin`.

```bash
osc@osc:~$ cd /usr/bin
osc@osc:/usr/bin$ pwd
/usr/bin
osc@osc:/usr/bin$
```

### Relative Path

Where an absolute path starts from the root directory `/` and leads to its destination, a relative path starts from the working directory.

The `.` notation refers to the working directory, and the `..` notation refers to the working directory's parent directory.

The working directory here is `usr`.

```bash
osc@osc:/usr/$ cd ./bin
osc@osc:/usr/bin$ pwd
/usr/bin
```

In almost all cases, we can omit the `./`.

```bash
osc@osc:/usr/$ cd bin
osc@osc:/usr/bin$ pwd
/usr/bin
```

`pwd`
: Prints the absolute path of the current working directory.

```bash
osc@osc:~/Downloads$ pwd
/home/osc/Downloads
```

`cd [DIRECTORY]`
: Change directory.

To change our working directory (where we are standing in our tree-shaped maze), we use the `cd` command.

```bash
osc@osc:~$ cd /home/OSC/Downloads
osc@osc:~/Downloads$
```

Now , our working directory here is `Downloads`.

| Command | Usage |
|---------|-------|
| `cd ..` | Change the current working directory to the parent directory of the current directory. |
| `cd` | Change the working directory to your `home` directory. |
| `cd -` | Changes the working directory to the previous working directory. |
| `cd ~user_name` | Changes the working directory to the `home` directory of user_name. |

`ls [OPTION] [FILE]`
: Lists directory contents.

```bash
osc@osc:~$ ls
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

Besides the current working directory, we can specify the directory to list:

```bash
osc@osc:~$ ls /home
osc
```

| Option | Usage |
|--------|-------|
| `-l` | Displays detailed information about files. |
| `-a` | List all files, including the hidden files. |
| `-t` | Sort files by modification time, with the newest files appearing first. |
| `-r` | Reverse the order of the sort to display files in reverse order. |
| `-S` | Sort files by size, with the largest files appearing first. |

## Exploration Commands

`cat [OPTION] [FILE]`
: Display contents of a file, concatenate files and print on the standard output.

```bash
osc@osc:~/Documents$ cat myFile
hello world
```

| Option | Usage |
|--------|-------|
| `-n` | Number the lines of the output. |
| `-s` | Suppress repeated empty output lines. |
| `-E` | Display a dollar sign ($) at the end of each line. |

`file`
: Determine file type.

```bash
osc@osc:~/Documents$ file myFile
myFile: ASCII text
```

`type`
: It is used to find out whether it is a built-in or external binary file.

```bash
osc@osc:~$ type cd
cd is a shell builtin
```
