# 以下脚本用于生成TOMCAT实例
set "CATALINA_BASE=D:\idea_workspace\development_tools\tomcat\tomcat_template\tomcat_case1"  
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


# conf目录从apache-tomcat-8.0.45_https/conf目录复制过来， 在conf/Catalina/localhost加入两个xml文件
# 分别是ROOT.xml(pikaqiu1), website.xml(pikaqiu2), 分别部署了两个应用pikaqiu1, pikaqiu2
# 访问路径分别是http://127.0.0.1:5533, http://127.0.0.1:5533/website
# 多实例场景下ROOT.xml和website.xml中不能配置Context的path属性,配置了也没用