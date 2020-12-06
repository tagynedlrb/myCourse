<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<div id="content" class="p-4 p-md-5"
		style="background-color: #212529; align: center">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="p-4 pt-5" style="margin-left: auto; margin-right: auto">
				${course.name}을 새로 수강내역으로 추가하였습니다. 감사합니다. <a
					href="${pageContext.request.contextPath }/certaincourse?year=2021&semester=1">Click here
					to view current courses</a>
			</div>
		</nav>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>