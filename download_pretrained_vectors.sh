#!/bin/bash

mkdir Pretrained_Vectors

cp urls.txt ./Pretrained_Vectors

cd Pretrained_Vectors

while read url; do
	wget $url
done < ../urls.txt

cd ./Pretrained_Vectors
unzip '*.zip'
rm *.zip
