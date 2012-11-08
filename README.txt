All instructions are written with a windows environment on mind.

However it will not be very different from Unix/Mac deployment.


Download tomcat 7
1. Download tomcat from this location
http://tomcat.apache.org/download-70.cgi
2. Extract the tomcat application to a directory of your choice.
  eg. C:\tomcat7

Copying the project war file to tomcat webapps folder
1. Copy the downloaded war file, CreditCardApp-0.1.war to the webapps
folder inside tomcat. eg. C:\tomcat7\webapps\

To set java_home
1. Right click on my computer-> Select Advanced Tab.
2. create a new user variable by clicking "New" button
3. Set the variable name as "JAVA_HOME"
4. Set the variable value to the Java/bin path on your computer.
5. Click on Ok on all dialog windows to close the properties window.
6. JRE_HOME can also be set in the same way, except that it should point to
   parent folder of Java/bin (or) follow the method below.

Set JRE_HOME
1. Open a command prompt(windows)
2. type set JRE_HOME = "Path to your jdk location"
  eg. set JRE_HOME=C:\jdk1.7

Start Tomcat
1. In the same command prompt where you have set JRE_HOME, cd to the folder
   where tomcat is installed, eg. cd C:\tomcat7\bin
2. Once inside the bin directory, type:
   startup.bat and press enter.
3. A new window should open up and the tomcat server will be started.
   INFO: Server startup in xx ms
4. If it complains of JRE_HOME or JAVA_HOME not found/not set,
   check the path variables by typing "set" in the command prompt.

Run the application
1. Open a web browser and type the following into the address bar:
   "http://localhost:8080/CreditCardApp-0.1/"
2. A username and password page will be prompted,
   username - abcd
   password - qwerty
3. Create a new customer with 'az' as state.
4. Once created, submit the application for review, if the comments stays Approved,
   then the rule succeeded, else a comment will be added.
5. A submitted application cannot be submitted again.

