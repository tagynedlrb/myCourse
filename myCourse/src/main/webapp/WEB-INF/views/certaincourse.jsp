<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<table>
					<tr bgcolor="blue" align="center">
						<td colspan="6" style="color: white">학기별 수강 내역</td>
					</tr>
					<tr align="center" bgcolor="skybule">
						<td>년도</td>
						<td>학기</td>
						<td>교과목명</td>
						<td>교과구분</td>
						<td>담당교수</td>
						<td>학점</td>
					</tr>
					<c:forEach var="ccourse" items="${certaincourses}"
						varStatus="status">
						<tr>
							<td><c:out value="${ccourse.year}"></c:out></td>
							<td><c:out value="${ccourse.semester}"></c:out></td>
							<td><c:out value="${ccourse.name}"></c:out></td>
							<td><c:out value="${ccourse.type}"></c:out></td>
							<td><c:out value="${ccourse.professor}"></c:out></td>
							<td><c:out value="${ccourse.point}"></c:out></td>
						</tr>
					</c:forEach>
				</table>
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