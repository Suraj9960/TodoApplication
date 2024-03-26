<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo App</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<style>
.btn2 {
	text-align: center;
	margin-left: 580px;
	border-radius: 10px;
	margin-top: 30px;
}

.btn {
	border-radius: 10px;
}

table {
	margin-left: auto;
	margin-right: auto;
	text-align:center;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h2 class="text text-center mt-5">Todo List</h2>
	<table class="table table-bordered mt-3">
		<thead>
			<tr>
				<th scope="col">Description</th>
				<th scope="col">Target Date</th>
				<th scope="col">Is Done</th>
				<th scope="col">Operation</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todo1 }" var="todo">
				<tr>
					<td>${todo.description }</td>
					<td>${todo.targetDate }</td>
					<td>${todo.done }</td>
					<td>
					<a href="update-todo?id=${todo.id}" class="btn btn-success"><i class="fa-solid fa-pen-to-square"></i>&nbsp;Update</a>&nbsp;&nbsp;
					<a href="delete-todo?id=${todo.id }" class="btn btn-danger"><i class="fa-solid fa-trash"></i>&nbsp;Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<p class="text-center">
	<a href="add-todo" class="btn btn-success">Add Todos</a>
	</p>
</body>
</html>