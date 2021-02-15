# Docker 101

## Spin up a centos container
Pull centos image from latest stable:
```bash
docker pull centos
```

View all downloaded images:
```bash
docker images -a

REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
centos       latest    300e315adb2f   2 months ago   209MB
```

Start a container runnning the centos image:
```bash
docker run -i -t centos
```

The `-i` flag starts the container in interactive mode which is in the foreground. Conversely, `-d` runs the container in the background as a detached state. `-t` tells docker we want a tty session attached to the interactive mode. You can also pass a container name with `--name` so you can specify the container using a custom name.

We should now get a shell inside our centos container:
```bash
[root@dc07949c7315 /]# 
```

## Container management
To view active containers:
```bash
docker ps -a

CONTAINER ID   IMAGE     COMMAND       CREATED              STATUS                     PORTS     NAMES
dc07949c7315   centos    "/bin/bash"   About a minute ago   Exited (0) 2 seconds ago             sleepy_cannon
```
To stop an active container:
```bash
docker stop dc07949c7315
```

To start an inactive container:
```bash
docker start dc07949c7315
```

To restart an active container:
```bash
docker restart dc07949c7315
```

To restart an active container:
```bash
docker restart dc07949c7315
```

View exposed ports of a container:
```bash
docker port dc07949c7315
```

## Teardown the centos container
To remove a container instance specify the `container id` from the previous command:
```bash
docker rm dc07949c7315
```

To remove an image specify the `image id` found in `docker images -a`:
```bash
docker rmi 300e315adb2f
```

## Automation
We can build and customize docker images using a `Dockerfile` which instructs docker how to build our containers.