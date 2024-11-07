#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
  echo "$folder_name 폴더를 생성했습니다."
fi

for i in {0..4}
do
  touch "$folder_name/file$i.txt"
done
echo "5개의 파일을 생성했습니다."

tar -cf "$folder_name.tar" "$folder_name"
echo "파일을 압축하여 $folder_name.tar를 생성했습니다."

if [ ! -d "${folder_name}_extracted" ]; then
  mkdir "${folder_name}_extracted"
  echo "${folder_name}_extracted 폴더를 생성했습니다."
fi

tar -xf "$folder_name.tar" -C "${folder_name}_extracted"
echo "$folder_name.tar의 압축을 해제했습니다."

