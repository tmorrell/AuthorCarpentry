#!/bin/bash

#
# Basic setup that can be sourced to include the tools needed to build the website in your PATH
#
HERE=$(pwd)
echo "Adding $HERE/bin/windows to your path"
export PATH="$HERE/bin/windows:$PATH"
