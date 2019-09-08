<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Add Film</h1>
<a href="home.do">Home</a>

<form action ="addSkillForm.do" method="POST" >
<table>
<tr>
<td><input name="id" type="hidden" value="0"/></td> 

</tr>
<tr>
<td>Title</td>
<td><input name="name" type="text" value="${skill.name}" /></td>
</tr>
<tr>
<td>Description</td>
<td><input name="description" type="text" value="${skill.description}"/></td>
</tr>
 <tr>
<td>Proficiency</td>
<td><select name="proficiency" >
<option value="1">${skill.proficiency}</option>
<option value="2">BEG</option>
<option value="3">INT</option>
<option value="4">ADV</option>

</select></td>
</tr>
 <tr>
<td>Point Value</td>
<td><input name="pointValue" type="text" value="${skill.pointValue}"/></td>
</tr>
<tr>
<td>link</td>
<td><input name="link" type="text" value="${skill.link}"/> </td>
</tr>
<tr>
<td><input type="submit" value="Update" /></td>
</tr>
</table>
</form>
</body>
</html>