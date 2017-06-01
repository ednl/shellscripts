#!/usr/bin/env bash

#######################################################################
# Made by    : Ewoud Dronkert
# Licence    : GNU GPL v3
# Platform   : Mac OS X
# Requires   : Bash, file, clang
# Location   : ~/bin/
# Name       : c
# Version    : 1.0.0
# Date       : 2014-11-17
# Purpose    : Compile single C source file on OS X using clang
#              Use certain standard set of compiler settings
#              Simple file name based versioning
# Parameters : <C source file name>
# Exit     0 : success
#          1 : parameter count != 1
#          2 : file not found
#          3 : not a file
#          4 : file can not be read
#          5 : file is not C source according to `file'
#          6 : compiler error
#          7 : old compiled file could not be moved
#######################################################################

if [[ -z "$1" || -n "$2" ]]; then
	echo "Usage: $0 <source.c>"
	exit 1
fi

if [[ ! -e "$1" ]]; then
	echo "File \"$1\" not found."
	exit 2
fi

if [[ ! -f "$1" ]]; then
	echo "File \"$1\" is not a regular file."
	exit 3
fi

if [[ ! -r "$1" ]]; then
	echo "File \"$1\" can not be read."
	exit 4
fi

FTYPE=$(file -b "$1")
if [[ "$FTYPE" != "ASCII c program text" ]]; then
	echo "File \"$1\" is not a C source file."
	echo "The \`file' utility reports: \"$FTYPE\""
	exit 5
fi

DIR=$(cd $(dirname "$1") && pwd)
SRC=$(basename "$1")
SRC="$DIR/$SRC"
LNK=$(echo "$SRC" | sed s/\.c$//)
OBJ="$LNK-$(date +%Y%m%d%H%M%S)"

echo "Compiling  : $SRC"
clang -ansi -pedantic -g0 -Ofast -mmacosx-version-min=10.7 -march=core2 -o "$OBJ" "$SRC"

if [[ -e "$OBJ" ]]; then
	echo "Executable : $OBJ"
	if [[ -e "$LNK" ]]; then
		if [[ -w "$LNK" ]]; then
			if [[ -h "$LNK" ]]; then
				rm "$LNK"
			else
				MOD=$(stat -f "%Sm" -t "%Y%m%d%H%M%S" "$LNK")
				mv "$LNK" "$LNK-$MOD"
			fi
		else
			echo "Existing file \"$LNK\" could not be removed."
			exit 7
		fi
	fi
	ln -s "$OBJ" "$LNK"
	echo "Symlink    : $LNK"
else
	echo "Compilation unsuccessful."
	exit 6
fi
exit 0
