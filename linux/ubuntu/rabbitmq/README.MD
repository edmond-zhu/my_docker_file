### To build your rabbitmq docker image:
~~~
> docker build --no-cache --build-arg RABBITMQ_VER=<rabbitmq_version_tag> -t <new_docker_image>:<tag> <dockerfile_local_path>
~~~
***<rabbitmq_version_tag>*** is the supported version tag of offical rabbitmq, such as "latest", "management" or "3.8". 
For more detail, please refer to https://hub.docker.com/_/rabbitmq?tab=tags

### To run your rabbitmq docker image:
~~~
> docker run --rm -p 5672:5672 -p 15672:15672 --env RMQ_USR=<admin_name> --env RMQ_PSW=<admin_psw> <new_docker_image>:<tag>
~~~
You will find the following print to get the ip address of server:
~~~
2019-11-15 05:42:17.309 [info] <0.8.0> Server startup complete; 3 plugins started.
 * rabbitmq_management
 * rabbitmq_web_dispatch
 * rabbitmq_management_agent
 completed with 3 plugins.
Adding user "admin_name" ...
2019-11-15 05:42:18.260 [info] <0.783.0> Creating user 'admin_name'
Setting tags for user "admin_name" to [administrator] ...
2019-11-15 05:42:18.998 [info] <0.791.0> Setting user tags for user 'admin_name' to [administrator]
Setting permissions for user "admin_name" in vhost "/" ...
2019-11-15 05:42:19.782 [info] <0.799.0> Setting permissions for 'admin_name' in '/' to '.*', '.*', '.*'
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:ac:11:00:02  txqueuelen 0  (Ethernet)
        RX packets 13  bytes 958 (958.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6  bytes 300 (300.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ip6tnl0: flags=128<NOARP>  mtu 1452
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 1  (UNSPEC)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        loop  txqueuelen 1  (Local Loopback)
        RX packets 211  bytes 16446 (16.4 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 211  bytes 16446 (16.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

tunl0: flags=128<NOARP>  mtu 1480
        tunnel   txqueuelen 1  (IPIP Tunnel)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

*** User 'admin_name' with password 'admin_psw' completed. ***
*** Log in the WebUI at port 15672 (example: http:/localhost:15672) ***
~~~

Or run it in background:
~~~
> docker run -d --rm -p 5672:5672 -p 15672:15672 --env RMQ_USR=<admin_name> --env RMQ_PSW=<admin_psw> <new_docker_image>:<tag>
~~~
then, access this container to modify or monitor:
~~~
> docker exec -it <container_id> bash
~~~
