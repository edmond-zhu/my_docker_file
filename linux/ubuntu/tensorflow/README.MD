### This docker file is an unify interface to build docker image by import specified version number trough argument "TF_VER"

**e.g.:**
~~~
> docker build --build-arg TF_VER=<version_name> -t <new_image_name>:<your_tag> <local_path>
~~~
<version_name> should be a string of TensorFlow published tag version, such as "latest", "2.1.0-py3-jupytur" or "nightly-gpu"
