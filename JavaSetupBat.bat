@echo off
setx JAVA_HOME "C:\Program Files\Java\jdk1.6.0_23" 							//added -m to add as system variable instead of user.
@echo:
java -version
@echo:
mvn -version

set /p DUMMY=Hit ENTER to continue...