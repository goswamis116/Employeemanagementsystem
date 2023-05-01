<html>
<head>
<%@include file="./base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
body{
background-image: url("https://images3.alphacoders.com/102/102727.jpg");
background-repeat: no-repeat;
background-size: cover;

}
</style>

</head>
<body>
	<div class="container mt-3 bg-white rounded border border-danger" >
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">Employee Management App by Santanu</h1>
				<table class="table table-hover">
					<thead class="thead-dark table-hover">
						<tr class="table-info">
							<th scope="col">Emp ID</th>
							<th scope="col">Employee Name</th>
							<th scope="col">Department</th>
							<th scope="col">Salary</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employees }" var="e">

							<tr>
								<th scope="row">00000${e.id}</th>
								<td>${e.name}</td>
								<td>${e.description }</td>
								<td class="font-weight-bold">&#8377; ${e.salary }</td>
								<td>
								<a href="delete/${e.id}"><i class="fas fa-trash-alt text-danger" style="font-size:25px"></i></a>
								<a href="update/${e.id}"><i class="fas fa-edit" style="font-size:25px"></i></a>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-employee" class="btn btn-outline-primary">Add New
						Employee</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
