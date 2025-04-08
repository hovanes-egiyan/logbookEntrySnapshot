#!/bin/sh


D="/gapps/LogEntryCLAS"


export JAVA_HOME=/gapps/Java/jdk/21.0.5/x64/jdk21.0.5/
export PATH=$JAVA_HOME/bin:$PATH

CLASSPATH="${D}/logbookEntrySnapshot/src/main/java"
CLASSPATH="${CLASSPATH}:${D}/logbookEntrySnapshot/lib/jlog-5.1.0.jar"
CLASSPATH="${CLASSPATH}:${D}/logbookEntrySnapshot/lib/mysql-connector-java-5.1.32-bin.jar"

#CLASSPATH="${D}/logEntry/src/main/java"
#CLASSPATH="${CLASSPATH}:${D}/logEntry/lib/jlog-5.1.0.jar"
#CLASSPATH="${CLASSPATH}:${D}/logEntry/lib/mysql-connector-java-5.1.32-bin.jar"
export CLASSPATH


exec java org/jlab/hallb/AutoLogEntry/MakeLogEntry $@ &


