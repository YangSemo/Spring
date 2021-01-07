<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello Chang Joo!
</h1>
<h2>
	!  
</h2>

<h3>
	First Spring Use!
</h3>

<P>  The time on the server is ${serverTime}. </P>

<c:forEach var ="i" begin="0" end="3">
	<p><c:out value ="${i}"/></p>
</c:forEach>

<P>tomcat version: <%=application.getServerInfo() %></P>
<P>servlet-api-version: <%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></P>
<P>jsp version: <%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %></P>

</body>
</html>
  