#!/bin/bash

#experiment bash script in setting up mysql database

mysql -u root -p passwd -h 127.0.0.1

CREATE USER 'debian'@localhost IDENTIFIED BY 'passwd';
SELECT debian FROM mysql.user;
CREATE DATABASE 'linux_files';
use linux_files;
create table files_info ( filename TEXT, filepath TEXT, fileowner TEXT, filegroup TEXT, fileperm TEXT, fileperm TEXT );
ALTER TABLE linux_files ADD COLUMN `desc` TEXT;
INSERT INTO files_info (filename, filepath, fileowner, filegroup, fileperm, `desc`) VALUES ('hosts', '/etc/hosts', 'root', 'root', '-rw-r--r--', 'maps hostnames to ip addresses');
INSERT INTO files_info (filename, filepath, fileowner, filegroup, fileperm, `desc`) VALUES ('cat', '/usr/bin/cat', 'root', 'root', '-rwxr-xr-x', 'print file output to stdout');
INSERT INTO files_info (filename, filepath, fileowner, filegroup, fileperm, `desc`) VALUES ('vmlinuz-5.8.0-48-generic', '/boot/vmlinuz-5.8.0-48-generic', 'root', 'root', '-rw-------', 'Boot image');
INSERT INTO files_info (filename, filepath, fileowner, filegroup, fileperm, `desc`) VALUES ('.bashrc', '/home/debian/.bashrc', 'debian', 'debian', '-rw-r--r--', 'Debian\'s bash settings');
exit
