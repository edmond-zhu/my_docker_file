Please follow the steps tp start work node 

1) launch parallel encoder server:
~~~
> docker run --rm parallel_enc_svr:test
~~~

2) query the ip address of server:
~~~
> docker inspect --format '{{.NetworkSettings.IPAddress}}' <container-ID> 
~~~

3) get parallel encoder project from:
~~~
> git clone http://192.168.0.234/aom/codec.video.parallelframework.git
~~~

3) startup work node by following command:
~~~
> docker run --rm -e WORK_PATH=<path_to_framework> -e SVR_PATH=<svr_url, e.g.: amqp://usr:psw@172.17.0.2> -v <path_to_framework>:/work parallel_enc_node:test
~~~
