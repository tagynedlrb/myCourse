<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
	<div id="content" class="p-4 p-md-5" style="background-color: #212529; align:center">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="p-4 pt-5" style="margin-left:auto; margin-right:auto">
				<sf:form method="post"
					action="${pageContext.request.contextPath}/docreate"
					modelAttribute="course">
					<table class="formtable">
						<tr>
							<td class="label">수강년도:</td>
							<td><sf:input class="control" type="text" path="year" /><br>
								<sf:errors path="year" class="" /></td>
						</tr>
						<tr>
							<td class="label">학기:</td>
							<td><sf:select class="control" type="int" path="semester">
									<option value="1">1</option>
									<option value="2">2</option>
								</sf:select><br> <sf:errors path="semester" class="" /></td>
						</tr>
						<tr>
							<td class="label">교과목명:</td>
							<td><sf:input class="control" type="text" path="name" /><br>
								<sf:errors path="name" class="" /></td>
						</tr>
						<tr>
							<td class="label">교과구분:</td>
							<td><sf:select class="control" path="type">
									<option value="전선">전선</option>
									<option value="전지">전지</option>
									<option value="전필">전필</option>
									<option value="교양">교양</option>
								</sf:select><br> <sf:errors path="type" class="" /></td>
						</tr>
						<tr>
							<td class="label">담당교수:</td>
							<td><sf:input class="control" type="text" path="professor" /><br>
								<sf:errors path="professor" class="error" /></td>
						</tr>
						<tr>
							<td class="label">학점:</td>
							<td><sf:input class="control" type="text" path="point" /><br>
								<sf:errors path="point" class="error" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="수강내역 갱신!" /></td>
						</tr>
					</table>
				</sf:form>
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