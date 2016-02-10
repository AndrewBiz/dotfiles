#!/bin/bash
# script for mass vgen generation

count=1

# create rename script
#echo '#!/bin/bash' > mvgen.sh

for dir in "$@"
do
  if [ -d "$dir" ]
  then
    seq=$(printf "%02d" $count)
    echo VGENing for "$dir" ...
    vgen -s "$dir" -t web -n vgen-$seq #>> mvgen.sh
    # check if local web dir exist
    if [ -d "$dir/web" ]
    then
      echo Directory "$dir/web" exists
    else
      echo Creating directory "$dir/web" ...
      mkdir "$dir/web"
    fi
	  count=$((count+1))
  fi
done

#chmod +x mvgen.sh

#echo script ./mvgen.sh created
