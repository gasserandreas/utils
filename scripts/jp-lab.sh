#!/bin/bash

# utils
function _jupytor_scripts_start_loggin() {
    local name=$1
    echo ""
    echo "*************************************"
    echo "** Starting $name Jupyter Lab... **"
    echo "*************************************"
    echo ""
}

function _jupytor_scripts_open_directory() {
    local path=$1
    cd "$path" || \
        { echo "Error: could not switch to $path" ; exit 1 ; }
}

function _jupytor_scripts_start_lab() {
  local name=$1
  local port=$2
  local token=$3

  echo "Open Jupyter Lab $name on port $port"
  echo "Link: http://localhost:$port/lab?token=$token"
  echo ""

  jupyter lab --port="$port" --no-browser --NotebookApp.token="$token"
}

# jupyter lab opening functions
function jupytor_private() {
  local name="Private"
  local port=8888
  local token="b44fba51-0d8c-437c-9dda-147632440239"

  _jupytor_scripts_start_loggin "$name"
  _jupytor_scripts_open_directory "/Users/andreasliistro/Documents/Development/Playgrounds/Jupytor-Lab"
  _jupytor_scripts_start_lab $name $port $token
}

function jupytor_fhnw() {
  local name="FHNW"
  local port=8889
  local token="b5fd1f6c-6596-4174-b988-17bb0cb2bc07"

  _jupytor_scripts_start_loggin "FHNW"
  _jupytor_scripts_open_directory "/Users/andreasliistro/Documents/Ausbildung : Kurse/CAS - Data Science/JupyterLab"
  _jupytor_scripts_start_lab $name $port $token
}

# main script functionality
arg1=$1

# bash if arg1 is empty stop here
if [ -z "$arg1" ]
then
  echo "Error: no argument given"
  exit 1
fi

# switch case to start jupyter lab based on arg1
case $arg1 in
  private)
    jupytor_private
    ;;
  fhnw)
    jupytor_fhnw
    ;;
  *)
    echo "Error: unknown argument provided"
    exit 1
    ;;
esac


