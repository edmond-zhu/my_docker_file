### This docker file is an unify interface to build docker image by import specified version number trough argument "UBUNTU_VER"

**e.g.:**
~~~
> docker build --build-arg UBUNTU_VER=<version_num> -t <new_image_name>:<your_tag> <local_path>
~~~
<version_num> should be a number of Ubuntu published tag version, such as "latest", "18.04" or "16.04"
