#!/bin/sh
# JCATvis needs JavaFX, for example Zulu JRE FX 17

# to build: mvn package

# Example
#IMGDIR=$HOME/Pictures/mars/crism_testimages
#ARGS="-c src/main/resources/resources/calib/frt000128f3_07_if165j_mtr3_spectrum_soil.csv $IMGDIR/frt0001374a_07_if165j_mtr3.img $IMGDIR/hrl000095c7_07_if182j_mtr3.img"

# get directory where this script is located:
DIR=$(cd ${0%/*}; pwd)

# to run with multiple JARs below $DIR/lib/
cd $DIR
java -showversion -classpath target/JCATvis.jar:$(printf %s: target/JCATvis_lib/*.jar) app.runJCAT $* $ARGS

