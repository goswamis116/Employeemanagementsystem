<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<style type="text/css">
body {
	background-image: url("https://wallup.net/wp-content/uploads/2017/11/17/181144-city-blurred-bokeh.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3 bg-info text-white rounded">Edit the Employee Details</h1>
				<form action="${pageContext.request.contextPath }/handle-employee"
					method="post">
					<input type="hidden" value="${employee.id }" name="id" />
					<div class="form-group bg-info text-white rounded">
						<label for="name">Employee Name</label><input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the Employee name here"
							value="${employee.name }">
					</div>
					<div class="form-group bg-info text-white rounded">
						<label for="department">Employee Department</label>
						<textarea class="form-control" id="description" name="description"
							rows="2" placeholder="Enter the  Department">${employee.description }
                    </textarea>
					</div>

					<div class="form-group bg-info text-white rounded">
						<label for="salary">Salary</label> <input type="text"
							class="form-control" id="salary" name="salary"
							placeholder="Enter the Salary amount" value="${employee.salary }">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-dark btn-lg">Back</a>

						<button type="submit" class="btn btn-primary btn-lg">Update
							and Save</button>
					</div>

				</form>
			</div>
		</div>

	</div>

</body>
</html>