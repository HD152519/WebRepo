<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/WebClass/scope" method = "post">
<input type="text" name = "id">
<input type="hidden" name = "pwd" value = "test">
<button type = "submit">전송</button>
<h1>Scope2</h1>
</form>

<h1>id : <%= request.getParameter("id") %></h1>
<h1>pwd : <%= request.getParameter("pwd") %></h1>
<h1>request scope : <%= request.getAttribute("key") %></h1>
<h1>session scope : <%= session.getAttribute("key") %></h1>
<h1>application scope : <%= application.getAttribute("key") %></h1>

<form action="/WebClass/jsp/scope2.jsp" method = "post">
<button type = "submit">전송</button>
</form>

<script>
<%
	String error = (String) request.getAttribute("error");
	if(error != null){
%>
		alert( '<%= error %>');
<%
	}
%>

</script>

</body>
</html>