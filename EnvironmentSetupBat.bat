@echo off
@echo: 
@echo: 

set "JAVA6=C:\Program Files\Java\jdk1.6.0_23"
set "JAVA8=C:\Program Files\Java\jdk1.8.0_25"

set "MAVENOLD=C:\Program Files\Apache Software Foundation\apache-maven-3.2.5"
set "MAVENEW=C:\Program Files\Apache Software Foundation\apache-maven-3.3.9"

echo ----------------------------------------------
echo ~~~~~~~~~~~~~  Old Configurations  ~~~~~~~~~~~
echo ----------------------------------------------

echo JAVA_HOME	: %JAVA_HOME%
echo M2			: %M2%
echo M2_HOME	: %M2_HOME%

@echo: 
echo ----------------------------------------------
echo ~~~~~~~~~  Setting New Configurations  ~~~~~~~
echo ----------------------------------------------

@echo: 
setx -m JAVA_HOME "C:\Program Files\Java\jdk1.6.0_23" 							//added -m to add as system variable instead of user.
setx M2_HOME "C:\Program Files\Apache Software Foundation\apache-maven-3.2.5" 

@echo:
echo ----------------------------------------------
echo ~~~~~~~~~~~~~  New Configurations  ~~~~~~~~~~~
echo ----------------------------------------------

@echo:
@echo:
echo JAVA_HOME	: %JAVA_HOME%
echo M2			: %M2%
echo M2_HOME	: %M2_HOME%
@echo:
java -version
@echo:
mvn -version

set /p DUMMY=Hit ENTER to continue...