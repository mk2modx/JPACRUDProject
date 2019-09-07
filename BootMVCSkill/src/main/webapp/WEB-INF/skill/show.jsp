<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="home.do">Home</a>


<div>
  <h5>${skill.id} </h5>
  
<h5>${skillAdded.name}</h5>
<form action="deleteSkill.do" method="GET">
<input name="idd" type="hidden" value="${skill.id}" />
<input type="submit" value="Delete Skill">
</form>
</div>


</body>
</html>