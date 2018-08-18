#!/usr/bin/env bash
# change the contents of !!! for every trip day

# copy photo files to the working_folder
# cd working_folder
# copy geo tracks to ./geotag

# arrange and rename files:
# !!!
# phls -R | phmove . -a | phrename -a anb

# find _clock_ files and calculate time difference (UTC - photo) in seconds

# rename to get correct date-time in file-names
# !!!
#phls -R | phrename -s -194

# fix dto and fmd
phls -R | phfixfmd
#phls -R | phfixdto

# put geo tags in files
# geotag0300home .
# !!!
exiftool -preserve -overwrite_original -geotag "./geotag/*.*" '-geotime<${DateTimeOriginal}+03:00' .
