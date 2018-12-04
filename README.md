# dockerw
docker wrapper template bash script

you can use it to simplify bash commands related to docker in your project

## installation

go to the directory where you want to use docker wrapper and install it

with **wget**:

```
sh -c "$(wget https://raw.githubusercontent.com/pwittchen/dockerw/master/install.sh -O -)
```

or with **curl**:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/pwittchen/dockerw/master/install.sh)"
```

then, `install.sh` script will copy `dockerw.sh` script and sample `.dockerw.config` file into your current directory
