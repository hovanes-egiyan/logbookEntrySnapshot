#JAVA_HOME := /usr/lib/jvm/java-1.8.0
JAVA_HOME := /gapps/Java/jdk/21.0.5/x64/jdk21.0.5/
PATH      := ${JAVA_HOME}/bin:${PATH}
export JAVA_HOME
export PATH
#CLASSPATH :=.:lib/jlog-4.0.1.jar:lib/mysql-connector-java-5.1.32-bin.jar:src/main/java

CLASSPATH :=.:lib/jlog-5.1.0.jar:lib/mysql-connector-java-5.1.32-bin.jar:src/main/java
export CLASSPATH 

SOURCES := src/main/java/org/jlab/hallb/AutoLogEntry/MakeLogEntry.java src/main/java/org/jlab/hallb/AutoLogEntry/CheckComboBox.java

.PHONY: all clean install uninstall print

all: install src/main/java/org/jlab/hallb/AutoLogEntry/MakeLogEntry.class
#	javac -Xlint:unchecked -cp $(CLASSPATH) src/main/java/org/jlab/hallb/AutoLogEntry/MakeLogEntry.java src/main/java/org/jlab/hallb/AutoLogEntry/CheckComboBox.java
#	javac -Xlint:none -cp $(CLASSPATH) src/main/java/org/jlab/hallb/AutoLogEntry/MakeLogEntry.java src/main/java/org/jlab/hallb/AutoLogEntry/CheckComboBox.java

src/main/java/org/jlab/hallb/AutoLogEntry/MakeLogEntry.class: ${SOURCES} 
	javac -Xlint:none -cp $(CLASSPATH) ${SOURCES} 

install:  logbookEntry.sh src/main/java/org/jlab/hallb/AutoLogEntry/MakeLogEntry.class 
	install -m 755 $? /gapps/bin/

clean:
	rm -f src/main/java/org/jlab/hallb/AutoLogEntry/*.class

