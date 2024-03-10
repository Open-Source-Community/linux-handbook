# Chapter 5: Compression and Archiving

## Compressing file

### What is data compression?

Data compression is the process of encoding or modifying data using functions or an algorithm to reduce its size. Fundamentally, it involves re-encoding information using fewer bits than the original representation.

### Why data compression?

Data compression is important for reducing file size to be transferred easily and use less space when stored.

### Compressing files in Linux

Files in Linux can be compressed or decompressed using the **`gzip`** tool.

#### Compresssing files

Use `gzip filename` and it will be compressed and replaced with the compressed file `filename.gz`.

#### Decompressing files

You can decompress files compressed by `gzip` by adding flag `-d` to the command so it becomes `gzip -d filename.gz`.

#### Other useful flags

There are plenty of flags that can be used and there is some of them

- `-k` keeps the original file and makes a new file for the compressed one.
- `-l` for compressed files it show:
    1. compressed size
    2. uncompressed size
    3. the ratio between them
- `-r` used in directories to recursively compress all files inside it
- `-1` - `-9` is used to regulate the speed and compression level, where `-1` is the fastest (less compression) and `-9` indicates the slowest (best compression). *default compression level is `-6`*.
- `-h` display help screen.

# Archiving directories

## What is archiving

Process of bundling multiple files or directories into a single file for future reference. Archiving directories can help in compressing them and save storage.

## Archiving in Linux

The `tar` command is used to archive files or directories by this format `tar [option] [archive-file] [filename]`.

### Flag options

- `-f` is a mandatory flag to create an archive with a specific name.
- `-c` for creating archives.
- `-x` for extracting archives.
- `-t` list files in the archive.
- `-u` add a file to an existing archive.
- `-z` compress the archive file using gzip.

```
osc@osc:-$ tar -czf Directory.tar.gz Directory
 ```

 This example will creat a new archive for Directory called Directory.tar.gz then commpress it using `gzip`.

 > **Note:** `.tar` and `.gz` are prefered for users but its not mandatory and not used by the computer.
