#!/bin/sh

echo "Merging all .tif files..."

docker run --rm -it -v $PWD:/pwd osgeo/gdal:alpine-normal-latest gdal_merge.py -o /pwd/files/merged.tif /pwd/files/lw1.tif /pwd/files/lw10.tif /pwd/files/lw11.tif /pwd/files/lw12.tif /pwd/files/lw13.tif /pwd/files/lw14.tif /pwd/files/lw2.tif /pwd/files/lw3.tif /pwd/files/lw4.tif /pwd/files/lw5.tif /pwd/files/lw6.tif /pwd/files/lw7.tif /pwd/files/lw8.tif /pwd/files/lw9.tif
