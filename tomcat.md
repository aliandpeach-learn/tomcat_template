# 以下脚本用于生成TOMCAT实例
set "CATALINA_BASE=D:\idea_workspace\development_tools\tomcat\tomcat_case1"  
set "CATALINA_HOME=D:\idea_workspace\development_tools\tomcat\apache-tomcat-8.0.45_https"  
set "EXECUTABLE=%CATALINA_HOME%\bin\catalina.bat"  

set CMD_LINE_ARGS=  
:setArgs  
if ""%1""=="""" goto doneSetArgs  
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1  
shift  
goto setArgs  
:doneSetArgs  

call "%EXECUTABLE%" start %CMD_LINE_ARGS%  
