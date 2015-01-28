<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample | File</title>
</head>
<body>
<h1>Hello World</h1>
<% java.util.Date date =  new java.util.Date();%>
<%=System.getProperty("java.version")%>
<%=System.getProperty("os.name")%>
<%=System.getProperty("user.name")%>
Hello time is now <%=String.valueOf(date)%>
<jsp:forward page="hello.jsp"/>
</body>
</html>