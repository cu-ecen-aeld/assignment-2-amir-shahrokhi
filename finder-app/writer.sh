#!/bin/bash

if [ $# != 2 ] ; then
  echo "ERROR: wrong number of arguments!"
  echo "Syntax:"
  echo "  writer.sh <write_file> <write_str>"
  exit 1
fi

write_file=$1
write_str=$2
write_dir=$(dirname ${write_file})

mkdir -p ${write_dir}
touch ${write_file}

if [ $? != 0 ] ; then
  echo "ERROR: '${write_file}' cannot be created or modified!"
  exit 1
fi

echo "${write_str}" > ${write_file}

