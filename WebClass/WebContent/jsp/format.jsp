<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setAttribute("price", 1000000);%>
<c:set var="price" value="1000000"/>
s{price}<br/>
<fmt:formatNumber value="${price}" type="number"></fmt:formatNumber><br/>
<fmt:formatNumber value="${price}" type="percent"></fmt:formatNumber><br/>
<fmt:formatNumber value="${price}" type="currency"></fmt:formatNumber><br/>

<c:set car="now" value="%= new java.util.Data() %>"/>

<!-- full,Medium.short -->
<fmt:formatDate value="${ now }" type ="date" dateStyle ="full" />
<fmt:formatDate value="${ now }" type ="time" timeStyle ="medium" />
<fmt:formatDate value="${ now }" type ="both" pattern="yyyy/MM/dd hh:mm:ss" />

</body>
</html>