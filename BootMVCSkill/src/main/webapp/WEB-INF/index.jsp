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
<div>
<table><tr>
<td><form action="getSkill.do" method="GET">
  Search for Skills <input type="text" name="ski" >
  <input type="submit" value="Show Skill" />
</form><td>
<td>
<form action="addSkillLink.do">
<input type="submit" value="Add Skill" style="height:220px; width:150px">
</form></td>
</tr></table>
</div>
<!-- <div>
<form action="updateLink.do" method="GET">
Film ID: <input type="text" name="upd"/>
<input type="submit" value="Update Skill">
</form>
</div> -->
<br>
<div>
<table class="table table-striped">

<c:forEach items="${skillset}" var="skill">
<tr>
  <td><h3> Skill : ${skill.id} </h3></td>
  <td><h3><a href="getSkill.do?skillId=${skill.id}">${skill.name} </a> </h3></td>
  </tr>
  <tr>
  <td><form action="deleteSkill.do" method="GET">
<input name="idd" type="hidden" value="${skill.id}" />
<input type="submit" value="Delete Skill">
</form></td>

  <td><form action="updateLink.do" method="GET">
<input name="upd" type="hidden" value="${skill.id}" />
<input type="submit" value="Update Skill">
</form>
</td>
</tr>
</c:forEach>

</table>
</div>

</body>
</html>