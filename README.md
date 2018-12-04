# dockerw
docker wrapper template bash script

you can use it to simplify bash commands related to docker in your project and make them more readable

## installation

go to the directory where you want to use docker wrapper and install it

with **wget**:

```
sh -c "$(wget https://raw.githubusercontent.com/pwittchen/dockerw/master/install.sh -O -)"
```

or with **curl**:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/pwittchen/dockerw/master/install.sh)"
```

then, `install.sh` script will copy `dockerw.sh` script into your current directory

## usage

first, you need create `.dockerw.config` file in the same directory where you have `dockerw.sh` script and use it to configure your docker image settings

default settings look as follows:

```
IMAGE_NAME="user/repo"
HOST="127.0.0.1"
PORT_IN="7000"
PORT_OUT="7000"
```

optionally, you can add your own custom variables or customize `dockerw.sh` script because it's just a template

by default you can call `./dockerw.sh` script with one of the following options:

```
--help      shows help
--build     builds container
--run       runs container
--cli       runs container with interactive cli (when possible)
--push      pushes container to docker hub
--pull      pulls container from docker hub
--stop      stops running docker container
--remove    removes container
--list      shows available docker containers
--ps        show running containers
```

you can always type `./dockerw.sh --help` to show help
