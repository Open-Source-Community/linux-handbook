# Compression and Archiving

Data compression is the process of encoding or modifying data using functions or an algorithm to reduce its size. Fundamentally, it involves re-encoding information using fewer bits than the original representation.

Data compression is important for reducing file size to be transferred easily and use less space when stored.

## Compression

Files in Linux can be compressed or decompressed using the `gzip` tool.

`gzip FILENAME`
: Compresses a file.

Compressed and replaced with the compressed file `filename.gz`.

You can decompress files compressed by `gzip` by adding flag `-d` to the command so it becomes `gzip -d filename.gz`.

There are plenty of flags that can be used and there is some of them

| Option | Usage |
|--------|-------|
| `-k` | Keeps the original file and makes a new file for the compressed one. |
| `-l` | For compressed files it show: compressed size, uncompressed size, the ratio between them. |
| `-r` | Used in directories to recursively compress all files inside it. |

```bash
osc@osc:-$ gzip -r Directory
```

All files within this directory is going to be compressed.

| Option | Usage |
|--------|-------|
|`-1` - `-9` | Is used to regulate the speed and compression level, where `-1` is the fastest (less compression) and `-9` indicates the slowest (best compression). *default compression level is `-6`*.
| `-h` | Display help screen. |

> **Note:**  You can use `ls -l` command to monitor file size before and after compression.

## Archiving

Process of bundling multiple files or directories into a single file for future reference. Archiving directories can help in compressing them and save storage.

`tar [OPTION] ARCHIVE FILE...`
: Archives files or directories.

### Flag options

| Option | Usage |
|--------|-------|
| `-f` | Is a mandatory flag to create an archive with a specific name. |
| `-c` | For creating archives. |
| `-x` | For extracting archives. |
| `-t` | List files in the archive. |
| `-u` | Add a file to an existing archive. |
| `-z` | Compress the archive file using gzip. |

```bash
osc@osc:-$ tar -czf Directory.tar.gz Directory
```

This example will creat a new archive for Directory called `Directory.tar.gz` then commpress it using `gzip`.

```bash
osc@osc:-$ tar -uf Directory.tar file.txt
```

Add `file.txt` to the existing archive `Directory.tar`

> **Note:** `.tar` and `.gz` are prefered for users but its not mandatory and not used by the computer.
