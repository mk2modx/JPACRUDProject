<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="home.do">Home</a>

<c:choose>
<c:when test="${! empty skill}">
	<div>
		<h3>${skill.id}</h3>
		<h3>${skill.name}</h3>
		<h3>${skill.description}</h3>
		<%-- <form action="deleteSkill.do" method="GET">
			<input name="idd" type="hidden" value="${skill.id}" /> <input
				type="submit" value="Delete Skill">
		</form> --%>
	</div>
</c:when>
<c:when test="${! empty updated} }">
	<div>
		<h5>${updated.id}</h5>
		<h5>${updated.name}</h5>
	</div>
</c:when>

<c:when test="${! empty added} }">
	<div>
		<h5>${added.id}</h5>
		<h5>${added.name}</h5>
	</div>
</c:when>
</c:choose>

</body>
</html>