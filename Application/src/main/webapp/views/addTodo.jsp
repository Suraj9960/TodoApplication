<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<meta charset="UTF-8">
<title>Add Todo</title>
<style>
.card {
	width: 400px;
	margin: auto;
	margin-top: 20px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.btn {
	margin-left: 120px;
	border-radius: 18px;
}

.cl {
	background-color: blue;
	color: white;
	height: 55px;
}

.cl h4 {
	margin-top: 15px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
	<form:form method="post" modelAttribute="todos">
		<div class="container-fluid">
			<div class="card">
				<div class="cl">
					<h4 class="text-center">Todo Page</h4>
					<hr>
				</div>

				<div class="card-body">

					<div class="form-group">
						<label for="exampleInputEmail1">Description</label>
						<form:input type="text" class="form-control"
							id="exampleInputEmail1" path="description"
							aria-describedby="emailHelp" placeholder="Enter Description"
							required="required" />
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Target Date</label>
						<form:input type="date" class="form-control"
							id="exampleInputEmail1" path="targetDate"
							aria-describedby="emailHelp" placeholder="Enter Target Date"
							required="required" />
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Is Done</label>
						<form:input type="text" class="form-control"
							id="exampleInputEmail1" path="done" aria-describedby="emailHelp"
							placeholder="Enter Is Done" required="required" />
					</div>

					<button type="submit" class=" but btn btn-outline-success ">Submit</button>
				</div>
			</div>
		</div>

	</form:form>

</body>
</html>