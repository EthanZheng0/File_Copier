#Created by Ethan Zheng on Sep.5 2018

PATH_ORIGINAL=$(pwd)/$2
mkdir $PATH_ORIGINAL/COPIED_FILES
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "$line"
    cp $PATH_ORIGINAL/$line $PATH_ORIGINAL/COPIED_FILES/$line
done < $1
