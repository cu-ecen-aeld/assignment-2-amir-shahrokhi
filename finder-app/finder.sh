#!/bin/bash

if [ $# != 2 ] ; then
  echo "ERROR: wrong number of arguments!"
  echo "Syntax:"
  echo "  finder.sh <files_dir> <search_str>"
  exit 1
fi

files_dir=$1
search_str=$2

if [ ! -d ${files_dir} ] ; then
  echo "ERROR: '${files_dir}' does NOT represent a directory on the filesystem!"
  exit 1
fi

line_count=$(grep -r  "${search_str}" ${files_dir} | wc -l)
file_count=$(find ${files_dir} -type f | wc -l)

echo "The number of files are ${file_count} and the number of matching lines are ${line_count}"
