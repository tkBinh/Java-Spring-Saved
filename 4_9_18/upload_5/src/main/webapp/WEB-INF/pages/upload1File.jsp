<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload 1 File</title>
</head>
<body>
	<!-- Chú ý: Trên các form để upload dữ liệu bạn cần có thuộc tính enctype="multipart/form-data". -->
	<jsp:include page="_menu.jsp" />
	<h3>Upload One File:</h3>

	<!-- MyUploadForm -->
	<form:form modelAttribute="myUploadForm" method="POST" action=""
		enctype="multipart/form-data">
 
        Description:
        <br>
		<form:input path="description" style="width:300px;" />
		<br />
		<br />  
             
        File to upload: <form:input path="fileDatas" type="file" />
		<br />


		<input type="submit" value="Upload">

	</form:form>

</body>
</html>