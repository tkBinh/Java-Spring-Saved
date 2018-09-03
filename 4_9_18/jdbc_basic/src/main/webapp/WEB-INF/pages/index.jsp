<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta charset="UTF-8">
<title>Category List</title>
</head>
<body>
	<div align="center">
		<h1>Category List</h1>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Category Name</th>
				<th>Country</th>
			</tr>
			<c:forEach var="dept" items="${categories}" varStatus="status">
				<tr>
					<td>${dept.categoryId}</td>
					<td>${dept.categoryName}</td>
					<td>${dept.country}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
