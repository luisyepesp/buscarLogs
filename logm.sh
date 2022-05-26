#!/bin/sh
find home -name '*.log' -o -name '*.txt' | xargs -I{} dirname {} > directoriosLog.txt
xargs -I {} mkdir -p directorio/"{}" < directoriosLog.txt
chmod 755 directorio/
find home -name \*.log -o -name \*.txt > archivosLog.text
date=$(date '+%Y-%m-%d%H:%M:%S')
xargs -I {} mv "{}" < archivosLog.text directorio/"{}_$date"
