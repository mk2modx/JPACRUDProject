<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Menu</title>
</head>
<body>
<form action="getSkill.do" method="GET">
  Film ID: <input type="text" name="ski" />
  <input type="submit" value="Show Skill" />
</form>
<br>
<div>
<form action="addSkillLink.do">
<input type="submit" value="Add Skill">
</form>
</div>
<div>
<form action="updateLink.do" method="GET">
Film ID: <input type="text" name="upd"/>
<input type="submit" value="Update Skill">
</form>
</div>
<br>
<c:forEach items="${skillset}" var="skill">
  <h5><a href="getSkill.do?skillId=${skill.id}">${skill.id} </a> </h5>
  <h5><a href="getSkill.do?skillId=${skill.id}">${skill.name} </a> </h5>
  <h5><a href="getSkill.do?skillId=${skill.id}">${skill.proficiency} </a> </h5>
  <h5><a href="getSkill.do?skillId=${skill.id}">${skill.pointValue} </a> </h5>
  <h5><a href="getSkill.do?skillId=${skill.id}">${skill.link} </a> </h5>
</c:forEach>


</body>
</html>