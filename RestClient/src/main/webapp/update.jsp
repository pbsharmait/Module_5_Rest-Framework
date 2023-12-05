<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<h1 style="color: blue;">Student Registration System</h1>
<b style="color: red;">
<%
	Student s=(Student)request.getAttribute("s");
	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
%>
</b>
<form name="frm" method="post" action="StudentController">
	<table>
		<input type="hidden" name="id" value="<%=s.getId()%>">
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname"   value="<%=s.getFname()%>"></td>
			<td><span id="fname"></span></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value="<%=s.getLname()%>"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email"  value="<%=s.getEmail()%>"></td>
			<td><span id="email"></span></td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="Center">
				<input type="submit" name="action" value="Update" class="btn btn-primary">
			</td>
		</tr>
	</table>
</form>
<a href="show.jsp">Show All Student</a>
</body>
</html>