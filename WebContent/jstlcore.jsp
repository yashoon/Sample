<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JSTL Core Tags tutorial</title>
</head>
<body>
<c:set var="salary" scope="session" value="${1000}"/>
<%-- <c:out value="${user}"/> --%>
<%-- <c:remove var="salary"/> --%>
<c:out value="${salary}"/>
<%-- <c:out value="${(String)session.getAttribute('user')}"/> --%>
<h3>Catch......</h3>
<c:catch var ="catchException">
   <% int x = 5/0;%>
</c:catch>

<c:if test = "${catchException != null}">
   <p>The exception is : ${catchException} <br />
   There is an exception: ${catchException.message}</p>
</c:if>


<p>Your salary is : <c:out value="${salary}"/></p>
<h3>Choose when Otherwise</h3>
<c:choose>
    <c:when test="${salary <= 0}">
       Salary is very low to survive.
    </c:when>
    <c:when test="${salary >= 1000}">
        Salary is very good.
    </c:when>
    <c:otherwise>
        No comment sir...
    </c:otherwise>
</c:choose>


<br>
<h3>Import</h3>
<c:import var="data" url="/auto.jsp" />
<c:out value="${data}"/>
<br><br>
<h3>For Each Example</h3>
<c:forEach var="i" begin="1" end="5">
   Item <c:out value="${i}"/><p>
</c:forEach>
<h3>For Tokens Example</h3>
<c:forTokens items="Zara,nuha,roshy" delims="," var="name">
   <c:out value="${name}"/><p>
</c:forTokens>
<h3>URL PARAM</h3>
<c:url value="./Display.jsp" var="myURL">
   <c:param name="trackingId" value="1234"/>
   <c:param name="reportType" value="summary"/>
</c:url>
<c:import url="${myURL}"/>


<a href="<c:url value="#"/>">TEST</a>


<c:set var="balance" value="120000.2309" />
<p>Formatted Number (1): <fmt:formatNumber value="${balance}" 
            type="currency"/></p>
<p>Formatted Number (2): <fmt:formatNumber type="number" 
            maxIntegerDigits="3" value="${balance}" /></p>
<p>Formatted Number (3): <fmt:formatNumber type="number" 
            maxFractionDigits="3" value="${balance}" /></p>
<p>Formatted Number (4): <fmt:formatNumber type="number" 
            groupingUsed="false" value="${balance}" /></p>
<p>Formatted Number (5): <fmt:formatNumber type="percent" 
            maxIntegerDigits="3" value="${balance}" /></p>
<p>Formatted Number (6): <fmt:formatNumber type="percent" 
            minFractionDigits="10" value="${balance}" /></p>
<p>Formatted Number (7): <fmt:formatNumber type="percent" 
            maxIntegerDigits="3" value="${balance}" /></p>
<p>Formatted Number (8): <fmt:formatNumber type="number" 
            pattern="###.###E0" value="${balance}" /></p>
<p>Currency in USA :
<fmt:setLocale value="en_IN"/>
<fmt:formatNumber value="${balance}" type="currency"/></p>


<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/samp"
     user="root"  password="root"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from user;
</sql:query>
 
<table border="1" width="20%">
<tr>

<th>First Name</th>
<th>Emp ID</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.id}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>