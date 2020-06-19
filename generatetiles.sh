#!/bin/bash

echo "Convert TIF files from files into Google Maps tiles in tiles..."

for entry in files/*        
do
  echo "Converting file $entry into tiles..."
  docker run --rm -it -v $PWD:/pwd osgeo/gdal:alpine-normal-latest gdal2tiles.py -z 0-19 -e --processes=$(nproc) /pwd/$entry /pwd/tiles
done

