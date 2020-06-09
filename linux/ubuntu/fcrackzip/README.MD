### This docker file is an unify interface to build docker image by import specified version number trough argument "UBUNTU_VER"

**e.g.:**
~~~
> docker build --build-arg UBUNTU_VER=<version_num> -t <new_image_name>:<your_tag> <local_path>
~~~
<version_num> should be a number of Ubuntu published tag version, such as "latest", "18.04" or "16.04"

### How to use docker jwduck/fcrackzip
fcrackzip is a tool to guess the password of an encrypted zip file, it is built from https://github.com/edmond-zhu/fcrackzip.git.

user can run a test to verify this application runs well:
~~~
> docker run jwduck/frackzip:latest
found file 'image_version', (size cp/uc     26/    14, flags 9, chk 4576)


PASSWORD FOUND!!!!: pw == 123
~~~

user can use following CLI on any platform support docker:
### Options:
 * ENCRYPT_LEN： length of password to test key
 * KEY_PATTERN:  pattern of key, can be combinition of character sets: A--high case alphabet, a--low case alphabet, 1--digits and !--other characters
 * ZIP_FILE:     file name of zip archive
 * LOG_FILE:     file name of log
 * KEY_POSITION: position to start crack, this option can continue the last incompleted job
~~~
> docker run -c -v <your_local_workdir>:/work -e ENCRYPT_LEN=<psw_len> -e KEY_PATTERN=<key_pattern_, e.g.: Aa1!> -e ZIP_FILE=<zip_file> -e LOG_FILE=<log_file> jwduck/frackzip:latest
~~~