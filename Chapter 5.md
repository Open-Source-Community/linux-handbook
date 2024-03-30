# Compression and Archiving

## Compression

Data compression is the process of encoding or modifying data using functions or an algorithm to reduce its size. Fundamentally, it involves re-encoding information using fewer bits than the original representation.

Data compression is important for reducing file size so that files can be transferred easily and use less space when stored.

Files in Linux can be compressed or decompressed using the `gzip` tool.

`gzip FILENAME`
: Compresses a file.

To compress a file named `file.txt` using `gzip`:

> **Note:**  You can use `ls -lh` to monitor file size before and after compression.

```bash
osc@osc:-$ ls -lh
total 4.0k
-rw-r--r--. 1 osc osc 4.0K Mar 30 16:47 file.txt
osc@osc:-$ gzip file.txt
osc@osc:-$ ls -lh
total 4.0K
-rw-r--r--. 1 osc osc 55 Mar 30 16:47 file.txt.gz
```

The file `file.txt` is now compressed and replaced with the compressed file `file.txt.gz`. The new compressed file now occupies 55 bytes only instead of 4 kilobytes.

To extract or decompress back `file.txt` from `file.txt.gz`:

```bash
osc@osc:-$ gunzip file.txt.gz
osc@osc:-$ ls -lh
total 4.0k
-rw-r--r--. 1 osc osc 4.0K Mar 30 16:47 file.txt
```

> **Note:** You can decompress files compressed by `gzip` by adding the flag `-d` to the command, so it becomes `gzip -d file.txt.gz`.

There are plenty of flags that can be used, and there are some of them:

| Option | Usage |
|--------|-------|
| `-k` | Keeps the original file and makes a new file for the compressed one. |
| `-l` | For compressed files it show: compressed size, uncompressed size, and the ratio between them. |
| `-r` | Used in directories to recursively compress all files inside them. |
|`-1` - `-9` | Is used to regulate the speed and compression level, where `-1` is the fastest (less compression) and `-9` indicates the slowest (best compression). *default compression level is `-6`*.

To compress all files within a directory:

```bash
osc@osc:-$ ls -lh dir/
total 12K
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file1.txt
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file2.txt
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file3.txt
osc@osc:-$ gzip -r dir
osc@osc:-$ ls -lh dir/
total 12K
-rw-r--r--. 1 ocs ocs 56 Mar 30 17:00 file1.txt.gz
-rw-r--r--. 1 ocs ocs 56 Mar 30 17:00 file2.txt.gz
-rw-r--r--. 1 ocs ocs 56 Mar 30 17:00 file3.txt.gz
```

> **Note:** `gzip -r` compresses every file in the directory individually.

## Archiving

Archiving is the process of bundling multiple files or directories into a single file for future reference. Archiving directories can help compress them and save storage.

An **archive file** is a collection of files and directories that are stored in one file. **The archive file is not compressed** — it uses the same amount of disk space as all the individual files and directories combined.

`tar MODE [OPTION] -f ARCHIVE_NAME FILE...`
: Archives files or directories.

| Mode | Usage |
| ---- | ----- |
| `-c` | Create a new archive. |
| `-x` | Extract files from an archive. |
| `-r` | Append specified pathanmes to the end of an archive. |
| `-t, --list` | List the contents of an archive. |

| Option | Usage |
|--------|-------|
| `-f` | Mandatory flag to create an archive with a specific name. |
| `-u` | Add a file to an existing archive. |
| `-z` | Compress the archive file using gzip. |

> **NOTE:** The mode must be specified before any other options.
>
> example: `tar -fc` this will cause error, the correct way: `tar -cf`.

To create a tar archived file from `dir/`:

```bash
osc@osc:-$ ls -lh dir/
total 12K
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file1.txt
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file2.txt
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file3.txt
osc@osc:-$ tar -cf dir.tar dir/
osc@osc:-$ ls -lh
total 24K
drwxr-xr-x. 2 tonym tonym 4.0K Mar 30 17:17 dir
-rw-r--r--. 1 tonym tonym  20K Mar 30 17:18 dir.tar
```

Now that you created the archive file, then you can compress it using `gzip`.

To unarchive `dir.tar`:

```bash
osc@osc:-$ tar -xf dir.tar
osc@osc:-$ ls -lh dir/
total 12K
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file1.txt
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file2.txt
-rw-r--r--. 1 osc osc 4.0K Mar 30 17:00 file3.txt
```

> **Note:** `.tar` suffix is preferred, but it is not mandatory or used by `tar`.
