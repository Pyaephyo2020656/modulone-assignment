<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave | HOME</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<c:url var="commonCss" value="/resources/application.css"></c:url>
<link rel="stylesheet" href="${commonCss }">
</head>
<body>

	<c:import url="/jsp/include/navbar.jsp">
		<c:param name="view" value="teachers"></c:param>
	</c:import>

	<div class="container">
		<h3 class="my-4">Teacher Management</h3>

		<!-- Search Bar -->

		<form class="row mb-4">
			<div class="col-auto">
				<label class="form-label">Name</label> <input type="text"
					name="name" class="form-control" placeholder="Search Name" />
			</div>
			<div class="col-auto">
				<label class="form-label">Phone</label> <input type="tel"
					name="phone" class="form-control" placeholder="Search Phone" />
			</div>
			<div class="col-auto">
				<label class="form-label">Email</label> <input type="email"
					name="email" class="form-control" placeholder="Search Email" />
			</div>

			<div class="col btn-wrapper">
				<button class="btn btn-outline-success me-2"> <i class="bi bi-search"></i> Search</button>
				<c:url var="addNew" value="/teachers/edit"></c:url>
				<a href="${addNew }" class="btn btn-outline-danger"><i class="bi bi-plus-lg"></i> Add New</a>
			</div>
		</form>

		<!-- Table View -->
		<table class="table table-hover">
		     <thead>
		        <tr>
		          <th>ID</th>
		          <th>Name</th>
		          <th>Phone</th>
		          <th>Email</th>
		          <th>Assign Date</th>
		          <th>Classes</th>
		          <th>Edit</th>
		        </tr>
		     </thead>
		     
		  <tbody>
		    <tr>
		      <td>1</td>
		      <td>Min Lwin</td>
		      <td>09798851453</td>
		      <td>lwin.zaw@gmail.com</td>
		      <td>2022-9-1</td>
		      <td>5</td>
		      <td>
		       <c:url value="/teachers/edit" var="edit">
		        <c:param name="id" value="1"></c:param>
		       </c:url>
		       <a href="${edit }"> <i class="bi bi-pencil"></i></a>
		      </td>
		    </tr>
		    
		  </tbody>
		    
		</table>

	</div>



</body>
</html> 