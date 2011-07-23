#!/bin/sh
GROOVY_BIN=/usr/bin/groovy
BASE_DIR=/home/billy/src/groovy/game/
LIB_DIR=$BASE_DIR/lib
SRC_DIR=$BASE_DIR/src
LWJGL_JAR=$LIB_DIR/lwjgl.jar
SLICK_JAR=$LIB_DIR/slick.jar
JARS=$LWJGL_JAR:$SLICK_JAR
CLASSPATH=$JARS:$SRC_DIR
LD_LIBRARY_PATH=$LIB_DIR
MAIN=$SRC_DIR/main.groovy

env CLASSPATH=$JARS:$SRC_DIR LD_LIBRARY_PATH=$LIB_DIR $GROOVY_BIN $MAIN
