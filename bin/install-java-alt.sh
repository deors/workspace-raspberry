#!/bin/sh
JAVA_DIR=$1
JAVA_BIN_DIR=$JAVA_DIR/bin

DEST_DIR=/usr/bin
ALT_LEVEL=$2

for f in `find $JAVA_BIN_DIR -maxdepth 1 -type f -executable` 
do
  NAME=`basename $f`
  echo installing alternative for $JAVA_BIN_DIR/$NAME in $DEST_DIR/$NAME 
  update-alternatives --install $DEST_DIR/$NAME $NAME $JAVA_BIN_DIR/$NAME $ALT_LEVEL
done
