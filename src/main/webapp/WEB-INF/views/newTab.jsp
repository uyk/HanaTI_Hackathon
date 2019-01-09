<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>새창</title>
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<script>
	$(document).ready(function() {
		//window.open("<%= application.getContextPath()%>/mobile/push","", "width=375, height=550");
		window.open("<%= application.getContextPath()%>/mobile/card","", "width=375, height=550");
	});
	
	</script>
</head>
<body>
</body>
</html>
