<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deleting Cookies............</title>
</head>
<body>

<%
Cookie cookie=null;
Cookie[] cookies=null;
cookies=request.getCookies();

if(cookies!=null){
	
	for (int i=0;i<cookies.length;i++){
		
		cookie= cookies[i];
		
		if(cookie.getName().compareTo("last_name") == 0){
			cookie.setMaxAge(0);
			response.addCookie(cookie);
			System.out.println("Deleting last name");
		}
		
		out.println("Cookie name:"+cookie.getName()+"&nbsp;&nbsp;");
		out.println("Cookie name:"+cookie.getValue()+"</br>");
	}
	
}
else{
    out.println("<h2>No cookies founds</h2>");

}



%>

</body>
</html>