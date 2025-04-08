#!/bin/sh

#windowID=$1
#windowTitle=$2

#D=`dirname $0`
D="/gapps/LogEntryCLAS"

#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-oracle
#export PATH=$JAVA_HOME/bin:$PATH
#export JAVA_HOME=/usr/clas12/third-party-libs/jdk/1.8.0_31
#export PATH=$JAVA_HOME/bin:$PATH

#export SESSION=clasprod
#export EXPID=clasrun

#CLASSPATH="${D}/../tools/logEntry/src/main/java"
#CLASSPATH="${CLASSPATH}:${D}/../tools/logEntry/lib/jlog-4.0.1.jar"
#CLASSPATH="${CLASSPATH}:${D}/../tools/logEntry/lib/mysql-connector-java-5.1.32-bin.jar"
#export CLASSPATH

#exec java org/jlab/hallb/AutoLogEntry/MakeLogEntry $@ &

#export SESSION=hdops
#export EXPID=hdops

export JAVA_HOME=/gapps/Java/jdk/21.0.5/x64/jdk21.0.5/
export PATH=$JAVA_HOME/bin:$PATH


CLASSPATH="${D}/logEntry/src/main/java"
#CLASSPATH="${CLASSPATH}:${D}/logEntry/lib/jlog-4.0.1.jar"
CLASSPATH="${CLASSPATH}:${D}/logEntry/lib/jlog-5.1.0.jar"
CLASSPATH="${CLASSPATH}:${D}/logEntry/lib/mysql-connector-java-5.1.32-bin.jar"
export CLASSPATH


exec java org/jlab/hallb/AutoLogEntry/MakeLogEntry $@ &


