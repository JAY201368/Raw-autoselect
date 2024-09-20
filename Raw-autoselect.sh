#!/bin/bash

echo "Selected directory: $1"
# exit 0

if ! cd "$1" || [[ ${#1} -eq 0 ]]; then
    echo "Invalid path to photos!"
    echo "Script terminaed."
    exit 1
fi

mkdir JPG RAW RAW-Selected
echo "Folder \"JPG\", \"RAW\" and \"RAW-Selected\" created!"
echo "Categorizing photos into corresponding folders..."
mv *.JPG JPG 2> /dev/null
mv *.{ARW,NEF,CR2,RW2} RAW 2> /dev/null
echo "done."

jpgs=$(ls JPG)
raws=$(ls RAW)

cd RAW

echo "Moving RAW files..."
for raw in $raws; do
    basename="${raw%.*}"
    target="$basename.JPG"
    # pwd
    echo "$jpgs" | grep "$target" > /dev/null 2> /dev/null
    # echo $?
    if [[ $? -eq 0 ]]; then
        mv "$raw" ../RAW-Selected/"$raw"
    fi
done

cd ..
# rm -rf RAW
# echo "Folder \"RAW\" Deleted."
rmdir RAW 2> /dev/null
echo "Task finished! Enjoy Editing your photos :)"
