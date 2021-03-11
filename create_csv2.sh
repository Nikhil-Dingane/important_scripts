#!/bin/bash

mainDir=$1

echo "Identifier,Path Report Name" > spr-visit.csv
IFS==$'\n' 
for fileName in $(ls -1 $mainDir)
do
	visitId=$(echo $fileName | cut -d'_' -f1)
	echo "${visitId},\"${fileName}\"" >> spr-visit.csv
done
