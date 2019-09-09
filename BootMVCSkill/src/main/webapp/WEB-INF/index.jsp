<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style>
    h1 { color: #FF0000; }
    h2 { color: 00FFFF; }
  </style>
<title>Main Menu</title>
</head>
<body>
<div><nav>
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
</nav>
</div>

<h1>KIDSKILLS </h1>
<h3>Level up your kids. </h3>
<br>
<table>

<c:forEach items="${skillset}" var="skill">

<div>

 <table class="center-div" style="width: 500px; border: #999999 1px solid;">

<tr>
  <td class="td-center"><h3> Skill level : ${skill.proficiency} </h3></td>
  <td class="td-center"><h3><a href="getSkill.do?ski=${skill.id}">${skill.name} </a> </h3></td>
  </tr>
  <tr>
  <td class="td-center"><p>${skill.description}</p></td>
  </tr>
  <tr>
  
  <td class="td-center">link : <a href="${skill.link}">${skill.link}</a></td>
  </tr>
  <tr>
  <td class="td-center"><form action="deleteSkill.do" method="GET">
<input name="idd" type="hidden" value="${skill.id}" />
<input type="submit" value="Delete Skill">
</form></td>

  <td class="td-center"><form action="updateLink.do" method="GET">
<input name="upd" type="hidden" value="${skill.id}" />
<input type="submit" value="Update Skill">
</form>
</td>
</tr>
</table>

</div>
</c:forEach>

</table>

</body>
</html>