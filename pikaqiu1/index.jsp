<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <title>第一个 JSP 程序</title>
    </head>
<body>
	<h1>case-1</h1>
	<h1>servletContext.realPath=<%=request.getServletContext().getRealPath("/")%></h1>
    <h1>servletPath=<%=request.getServletPath()%></h1>
</body>
</html>