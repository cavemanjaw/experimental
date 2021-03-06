#!/bin/bash

for i in "$@"
do
case $i in
    -e=*|--extension=*)
    EXTENSION="${i#*=}"
    shift # past argument=value
    ;;  
    -s=*|--searchpath=*)
    SEARCHPATH="${i#*=}"
    shift # past argument=value
    ;;  
    -l=*|--lib=*)
    LIBPATH="${i#*=}"
    shift # past argument=value
    ;;  
    --default)
    DEFAULT=YES
    shift # past argument with no value
    ;;  
    *)  
          # unknown option
    ;;  
esac
done

