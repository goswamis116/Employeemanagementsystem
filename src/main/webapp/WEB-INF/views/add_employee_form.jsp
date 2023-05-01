<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<style type="text/css">
body {
	background-image: url("https://static.vecteezy.com/system/resources/previews/009/375/828/original/empty-wooden-table-background-and-blurry-green-background-on-the-agricultural-farm-background-ideas-can-be-used-for-displaying-or-editing-your-products-free-photo.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3 bg-info text-white rounded">Fill the Employee details</h1>
				<form action="handle-employee" method="post">
					<div class="form-group bg-info text-white rounded">
						<label for="name">Employee Name</label><input type="text"
							class="form-control " id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the Employee name here">
					</div>
					<div class="form-group bg-info text-white rounded">
						<label for="department">Employee Department</label>
						<textarea class="form-control" id="description" name="description"
							rows="2" placeholder="Enter the  Department">
</textarea>
					</div>

					<div class="form-group bg-info text-white rounded">
						<label for="salary">Salary</label> <input type="text"
							class="form-control" id="salary" name="salary"
							placeholder="Enter the Salary amount">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-dark btn-lg">Back</a>

						<button type="submit" class="btn btn-primary btn-lg">Add</button>
					</div>

				</form>
			</div>
		</div>

	</div>

</body>
</html>