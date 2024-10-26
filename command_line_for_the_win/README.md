Command Line for the Win

Welcome to the **Command Line for the Win** repository! This project focuses on using SFTP (Secure File Transfer Protocol) for uploading files via the command line.

## Getting Started

To initiate an SFTP session, use:

```bash
sftp hosturl
`````
Then, when it promts for password fill it and enter.

## Uploading Files

Use the `put` command to upload files:

```bash
sftp> put local_file_path
`````

### Example

```bash
sftp> put 0-first_9_tasks.png 
sftp> put 1-next_9_tasks.png 
sftp> put 2-next_9_tasks.png 
`````

## Listing Files

To view files in the current directory on the remote server, use:

```bash
sftp> ls
`````

## Common Commands

- **Upload a file:** `put local_file_path`
- - **Download a file:** `get remote_file_path`
- - **List files:** `ls`
- - **Change directory:** `cd directory_name`
- - **Exit SFTP:** `bye`
````
````
````
````
