<%@page import="com.dao.StudentDao"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

<table>
<tr>
<th>ID</th>
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<%
ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
StudentDao studentDao =a.getBean("studentDao",StudentDao.class);
List<Student> list=studentDao.getAllStudent();

for(Student s:list)
{
%>
<tr>
<td><%=s.getId()%></td>
<td><%=s.getFname()%></td>
<td><%=s.getLname()%></td>
<td><%=s.getEmail()%></td>
<td><%=s.getMobile()%></td>
<td>
<form name="edit" method="post" action="edit">
<input type="hidden" name="id" value="<%=s.getId()%>">
<input type="submit" name="action" value="EDIT" class="btn btn-primary">
</form>
</td>

<td>
<form name="edit" method="post" action="delete">
<input type="hidden" name="id" value="<%=s.getId()%>">
<input type="submit" name="action" value="DELETE" class="btn btn-danger">
</form>
</td>


</tr>
<% 
	}
%>
</table>
<a href="index">Add New Student</a>
</body>
</html>