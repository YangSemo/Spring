<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- 주석 단축키 ctrl+shift+/ -->
<!-- 주석 해제 단축키 ctrl+shift+\ -->


<html>
<head>
	<title>Kim Chang Joo Server</title>
</head>
<body>
<h1>
	I'm Joo Chang Joo!
</h1>
<h2>
 
</h2>


<P>  Chang Joo's server time  is ${serverTime}. </P>

<P>안녕하십니까?</P>
<P>저는 슈퍼 개미 김창주입니다.</P> 
<p>원하는 주식 데이터를 입력해주십시오.</p>

<h3>파일 업로드</h3>
<form action="/test/upload.do" method="post" enctype="multipart/form-data" encoding>
	<table>
		<tr>
			<td>Select File</td>
		    <td><input type="file" name="uploadFile" /></td>
		    <td>
		    	<button type="submit">Upload</button>
		    </td>
		</tr>
	</table>
</form>


<div style="width:200px; height:150px; float:left; margin-right:100px;">
<h3> I'm Strong</h3>
<p> <img width=300 height="600" src="resources/img/changjoo.jpg"> </p>
</div>

<div style="width:200px; height:150px;float:left;">
<h3> I'm listening to music</h3>
<p> <img width=300 height="600" src="resources/img/s.jpg"> </p>
</div>

<div style="width:200px; height:150px;float:bottom; margin-bottom: 500px">

</div>

<div style="width:200px; height:150px;float:left; margin-right:300px;">
<h3>I'm sick</h3>
	<p> 
		<!-- <video width="300" height="600" controls autoplay loop muted playsinline type="video/mp4">
			<source src="resources/img/aa.mp4" type="video/mp4"> 
		</video> -->
		<video width="300" height="600" loop controls="true" muted >
			<source src='resources/img/aa.mp4' type='video/mp4'>
		</video>
		
	</p>
</div>

<div style="width:200px; height:150px;float:left; margin-right:100px;">
	<h3>I'm haul</h3>
	<p> 
		<!-- <video width="300" height="600" controls autoplay loop muted playsinline type="video/mp4">
			<source src="resources/img/haul.mp4" type="video/mp4"> 
		</video> -->
		<video width="300" height="600" loop muted controls="true" src='resources/img/haul.mp4' type='video/mp4'>
		</video>
		
	</p>
</div>



<!-- <c:forEach var ="i" begin="0" end="3">
	<p><c:out value ="${i}"/></p>
	</c:forEach>
-->

<!-- <P>tomcat version: <%=application.getServerInfo() %></P>  -->
<!-- <P>servlet-api-version: <%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></P> -->
<!-- <P>jsp version: <%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %></P> -->


</body>
</html>
  