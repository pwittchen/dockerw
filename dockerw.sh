#!/usr/bin/env bash

source .dockerw.config

function showHelp() {
    echo "
    ./dockerw.sh (docker wrapper)

                --help      shows help
                --build     builds container
                --run       runs container
                --runbg     runs container in background
                --cli       runs container with interactive cli (when possible)
                --push      pushes container to docker hub
                --pull      pulls container from docker hub
                --stop      stops running docker container
                --remove    removes container
                --list      shows available docker containers
                --ps        show running containers
    "
}

function buildDocker() {
    sudo docker build -t $IMAGE_NAME .
}

function runDocker() {
   sudo docker run -p $HOST:$PORT_IN:$PORT_OUT -t $IMAGE_NAME
}

function runDockerInBackground() {
   sudo docker run -p $HOST:$PORT_IN:$PORT_OUT -td $IMAGE_NAME
}

function runDockerCli() {
   sudo docker run -i -t $IMAGE_NAME
}

function pushDocker() {
    sudo docker push $IMAGE_NAME
}

function pullDocker() {
    sudo docker pull $IMAGE_NAME
}

function stopDocker() {
   sudo docker stop $(sudo docker ps | grep $IMAGE_NAME | awk 'NF>1{print $NF}')
}

function removeDocker() {
   sudo docker rmi -f $(sudo docker images | grep $IMAGE_NAME | awk '{print $3}')
}

function listImages() {
   sudo docker images
}

function showRunningContainers() {
   sudo docker ps
}

while :; do
    case $1 in
        --help)
            showHelp
            exit
            ;;
        --build)
            buildDocker
            ;;
        --run)
            runDocker
            ;;
        --runbg)
            runDockerInBackground
            ;;
        --cli)
            runDockerCli
            ;;
        --push)
            pushDocker
            ;;
        --pull)
            pullDocker
            ;;
        --stop)
            stopDocker
            ;;
        --remove)
            removeDocker
            ;;
        --list)
            listImages 
            ;;
        --ps)
            showRunningContainers
            ;;
        --)
            shift
            break
            ;;
        -?*)
            printf 'WARN: Unknown option (ignored): %s\n' "$1" >&2
            ;;
        *)
            break
    esac

    shift
done

