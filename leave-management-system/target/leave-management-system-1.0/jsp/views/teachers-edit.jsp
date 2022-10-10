<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
</head>
<body>

	<c:import url="/jsp/include/navbar.jsp">
		<c:param name="view" value="teachers"></c:param>
	</c:import>

	<div class="container">
		<h3 class="my-4">${ empty param.id ? 'Add New ' : 'Edit '}Teacher</h3>

		<div class="row">
			<c:url value="/teachers" var="save"></c:url>
			<sf:form method="post" action="${save }" modelAttribute="form"
				cssClass="col-lg-6 col-md-9 col-sm-12">

				<sf:hidden path="id" />

				<div class="mb-3">
					<label class="form-label">Name</label>
					<sf:input path="name" placeholder="Enter Teacher Name"
						cssClass="form-control" />
				</div>
				<div class="mb-3">
					<label class="form-label">Phone</label>
					<sf:input path="phone" type="tel" placeholder="Enter Phone Number"
						cssClass="form-control" />
				</div>
				<div class="mb-3">
					<label class="form-label">Email</label>
					<sf:input path="email" type="email"
						placeholder="Enter Email Address" cssClass="form-control" />
				</div>
				<div class="mb-3">
					<label class="form-label">AssignDate</label>
					<sf:input path="assignDate" type="date" cssClass="form-control" />
				</div>

				<div>
					<button class="btn btn-outline-danger" type="submit">
					<i class="bi bi-save"></i> Save
					</button>
				</div>
			</sf:form>
		</div>


	</div>


</body>
</html>