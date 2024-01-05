#!/bin/bash
# script for mass heic to jpg file conversion

for i in *.HEIC 
do 
    sips -s format jpeg -s formatOptions 95 "$i" --out "$i.JPG"
done
