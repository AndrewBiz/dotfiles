#!/bin/bash
# script for mass cue to mp3 covretor generation

script_name='cnv2mp3.sh'

# create rename script
echo '#!/bin/bash' > $script_name

for file in "$@"
do
    fname=${file##*/}
    fbname=${fname%.*}
    echo ffmpeg -i "'$file'" -codec:a libmp3lame -qscale:a 1 "'$fbname.mp3'" >> $script_name
done

chmod +x $script_name

echo script ./$script_name created
