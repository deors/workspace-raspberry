#!/bin/sh
JAVA_DIR=$1
JAVA_BIN_DIR=$JAVA_DIR/bin

for f in `find $JAVA_BIN_DIR -maxdepth 1 -type f -executable` 
do
  NAME=`basename $f`
  echo removing alternative for $JAVA_BIN_DIR/$NAME
  update-alternatives --remove $NAME $JAVA_BIN_DIR/$NAME
done
