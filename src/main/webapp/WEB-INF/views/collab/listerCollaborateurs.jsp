<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.3.1-
dist/css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGP-App</title>
</head>
<body>
	<h1>Les collaborateurs</h1>
	<h3>of the class Java</h3>
	
	<ul>
	<%
	List<String>listeNoms=(List<String>)request.getAttribute("listeNoms");
	for (String nom:listeNoms){
		%>
		<li><%=nom %></li>
		<%
	}
	%>
	
	</ul>
	
	
</body>
</html>