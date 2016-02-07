#!/bin/bash
# require bash version 4.3 or newver
# script for renaming imovie files from YYYY-MM-DD HH_MM_SS.ext to
# YYYYMMDD-HHMMSS_AAA NNNNNN-XX.ext

name_suffix="ANBHDV020"
count=1
#read -p "New file suffix: " $name_suffix

while getopts s: option; do
	case $option in
		s) name_suffix=$OPTARG;;
	esac
done

for file in "$@"
do
  file_new=${file//-/}
  file_new=${file_new//_/}
	file_new=${file_new// /-}
	seq=$(printf "%02d" $count)
  file_new=${file_new/./_ANB $name_suffix-$seq.}
  echo mv "'$file'" "'$file_new'"
	count=$((count+1))
done
