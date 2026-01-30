#!/usr/bin/env bash

graphviz2drawio bzip2.bc.callgraph.dot

alias draw.io='/Applications/draw.io.app/Contents/MacOS/draw.io'
draw.io -x -f png -o bzip2.callgraph03.png bzip2.callgraph03.drawio
