#!/bin/sh
JAVA_DIR=$1
JAVA_BIN_DIR=$JAVA_DIR/bin

DEST_DIR=/usr/bin

for f in `find $JAVA_BIN_DIR -maxdepth 1 -type f -executable` 
do
  NAME=`basename $f`
  echo setting alternative for $DEST_DIR/$NAME to $JAVA_BIN_DIR/$NAME
  update-alternatives --set $NAME $JAVA_BIN_DIR/$NAME
done
