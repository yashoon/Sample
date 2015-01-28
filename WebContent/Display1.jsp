<html>
<head>
<title>Using JavaBeans in JSP</title>
</head>
<body>

<h2>Using JavaBeans in JSP</h2>
 
<jsp:useBean id="test" class="com.jason.sample.TestBean" />
 
<jsp:setProperty name="test" 
                    property="message" 
                     />
 
<p>Got message....</p>
 
<jsp:getProperty name="test" property="message" />
 

</body>
</html>