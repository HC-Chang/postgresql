#!/bin/bash

function set_env() {
    apt update
    apt install jupyter-notebook vim -y
}

function start_jupyter() {
    jupyter notebook --ip="0.0.0.0" --allow-root &
}

function helper() {
    echo "helper:"
    echo -e "\t0: set environment"
    echo -e "\t1: start jupyter notebook"

}

function main() {
    if [ "$1" = "" ]; then
        helper
        exit
    fi

    case "$1" in
    "0")
        set_env
        ;;
    "1")
        start_jupyter
        ;;
    *)
        helper
        ;;
    esac
}

main $@
