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
	<div id="content" class="p-4 p-md-5" style="background-color: #212529; align:center">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="p-4 pt-5" style="margin-left:auto; margin-right:auto">

	<table>
		<tr bgcolor="blue" align="center">
			<td colspan="4" style="color: white">학기별 수강 내역</td>
		</tr>
		<tr align="center" bgcolor="skybule">
			<td>년도</td>
			<td>학기</td>
			<td>취득 학점</td>
			<td>상세보기</td>
		</tr>
		<c:set var="year" value="0" />
		<c:set var="semester" value="0" />
		<c:set var="point" value="0" />
		<c:set var="totalpoint" value="0" />
		<c:forEach var="course" items="${courses}" varStatus="status">
			<tr>
				<c:if test="${course.year < 2021}">
					<c:set var="totalpoint" value="${totalpoint + course.point}" />
				</c:if>
				<c:if test="${course.id ==1}">
					<c:set var="year" value="${course.year}" />
					<c:set var="semester" value="${course.semester}" />
				</c:if>
				<c:if
					test="${(course.semester != semester || course.year != year) && year < 2021}">
					<td><c:out value="${year}"></c:out></td>
					<td><c:out value="${semester}"></c:out></td>
					<td><c:out value="${point}"></c:out></td>
					<td><a
						href="${pageContext.request.contextPath}/certaincourse?year=${year}&semester=${semester}">자세히</a></td>
					<c:set var="year" value="${course.year}" />
					<c:set var="semester" value="${course.semester}" />
					<c:set var="point" value="0" />
				</c:if>
				<c:set var="point" value="${point + course.point}" />
			</tr>
			<c:if test="${status.last && course.year < 2021}">
				<tr>
					<td><c:out value="${course.year}"></c:out></td>
					<td><c:out value="${course.semester}"></c:out></td>
					<td><c:out value="${course.point}"></c:out></td>
					<td><a href="#"></a></td>
					<td></td>
				</tr>
			</c:if>

		</c:forEach>
		<tr align="center" bgcolor="skyblue">
			<td>총계</td>
			<td></td>
			<td><c:out value="${totalpoint}"></c:out></td>
			<td></td>
		</tr>
	</table>
	<c:out value="${course}"></c:out>

</div></nav></div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>