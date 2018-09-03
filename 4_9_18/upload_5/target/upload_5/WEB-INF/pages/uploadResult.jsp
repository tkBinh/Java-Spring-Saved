<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Result</title>
</head>
<body>
	<jsp:include page="_menu.jsp" />

	<h3>Uploaded Files:</h3>

	Description: ${description}

	<br />

	<c:forEach items="${uploadedFiles}" var="file">
           - ${file} <br>
	</c:forEach>

</body>
</html>