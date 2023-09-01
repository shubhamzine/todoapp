<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<style>
table,td,th
{
	border:1px solid red;
	border-collapse : collapse;
}
table
{
	width:80%;
	margin:auto;
}
</style>
</head>

<body>
<h1 style="text-align:center;">Todo</h1>


<p>welcome ${param.uname} </p>
<a href="todo-form.jsp?uname=${param.uname}">Add new Todo</a>
<table>
<tr>
<th>title</th>
<th>target date</th>
<th>status</th>
</tr>
<c:forEach var="t" items="${listTodo}">
<tr>
<td><c:out value="${t.title}" /></td>
<td><c:out value="${t.target}" /></td>
<td><c:out value="${t.status}" /></td>
</tr>
</c:forEach>
</table>

</body>
</html>