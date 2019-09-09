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
<%--  <c:forEach items="${skill}" var="skill">--%>
	<div>
		<h4></h4>
		<h4>Skill Name : ${skill.name}(${skill.id})</h4>
		<h4>DesCription : ${skill.description}</h4>
		<h4>Skill level : ${skill.proficiency}</h4>
		<h4>XP+ : ${skill.pointValue}</h4>
		<h4>link : <a href="${skill.link}">${skill.link}</a></h4>
		<%-- <form action="deleteSkill.do" method="GET">
			<input name="idd" type="hidden" value="${skill.id}" /> <input
				type="submit" value="Delete Skill">
		</form> --%>
	</div>
	<%-- </c:forEach> --%>
</c:when>
<c:otherwise>
<p>No Skill Available</p>
</c:otherwise>
</c:choose>
<a href="${skill.link}">
<iframe width="1120" height="630" src="${skill.link}" frameborder="1" allowfullscreen></iframe> </a>
</body>
</html>