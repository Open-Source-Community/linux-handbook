# Getting Help

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

The following conventions apply to the SYNOPSIS section and can be used as a guide in other sections.

| Convention | Usage |
| ---------- | ----- |
| **bold text** | Type exactly as shown. |
| *italic text* | Replace with appropriate argument. |
| [-abc] | Any or all arguments within [ ] are optional. |
| -a`|`-b |  Options delimited by `|` cannot be used together. |
| argument ... | Argument is repeatable. |
| [expression] ... | Entire expression within [ ] is repeatable. |

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

> **Note:** Most commands have the `--help` command argument or option.

Get more help on the `cp` command by typing:

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
