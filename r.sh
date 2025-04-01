#!/bin/bash

BUILD_DIR="$PWD/build"
if [[ "$1" == "clean" ]]; then
    rm -f $BUILD_DIR/{bachelor-thesis,master-thesis,master-thesis-en}.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,pdf,out}
else
    cd src
    for i in bachelor-thesis ; do
        xelatex --halt-on-error -output-directory $BUILD_DIR $i
        biber --halt-on-error -output-directory $BUILD_DIR $i
        xelatex --halt-on-error -output-directory $BUILD_DIR $i
        xelatex --halt-on-error -output-directory $BUILD_DIR $i
    done

    rm -f $BUILD_DIR/{bachelor-thesis,master-thesis,master-thesis-en}.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,out}
fi
