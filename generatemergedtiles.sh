#!/bin/bash

echo "Merging all TIF files into one, so low-res tiles can be generated..."
if [[ -f files/merged.tif ]]; then
	echo "Merged tif exists. Not merging again."
else
	./merge.sh
fi

echo "Converting merged TIF file into Google Maps tiles..."

echo "Converting file files/merged.tif into tiles..."
docker run --rm -it -v $PWD:/pwd osgeo/gdal:alpine-normal-latest gdal2tiles.py -z 0-19 -e --processes=4 /pwd/files/merged.tif /pwd/tiles

