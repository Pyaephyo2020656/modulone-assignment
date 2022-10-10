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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<c:url var="commonCss" value="/resources/application.css"></c:url>
<link rel="stylesheet" href="${commonCss }">
</head>
<body>

	<c:import url="/jsp/include/navbar.jsp">
		<c:param name="view" value="classes"></c:param>
	</c:import>

	<div class="container">
		<h3 class="my-4">Class Management</h3>

		<form class="row mb-4">
			<div class="col-auto">
				<label class="form-label">Name</label> <input type="text"
					name="teacher" class="form-control"
					placeholder="Search Teacher Name " value="${param.teacher }" />
			</div>
			<div class="col-auto">
				<label class="form-label">Date From</label> <input type="date"
					name="from" class="form-control" value="${param.from }" />
			</div>
			<div class="col-auto">
				<label class="form-label">Date To</label> <input type="date"
					name="to" class="form-control" value="${param.to }" />
			</div>
			<div class="col btn-wrapper">
				<button class="btn btn-outline-success me-2">
					<i class="bi bi-search"></i> Search
				</button>
				<c:url var="edit" value="/classes/edit"></c:url>
				<a href="${edit }" class="btn btn-outline-danger"><i
					class="bi bi-plus-lg"></i> Add New</a>
			</div>

		</form>

		<c:choose>
			<c:when test="${ empty classList }">
				<div class="alert alert-info">There is no Class Data</div>
			</c:when>

			<c:otherwise>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Teacher</th>
							<th>Teacher Phone</th>
							<th>Start Date</th>
							<th>Months</th>
							<th>Students</th>
							<th>Description</th>
							<th>Edit</th>
							<th>Details</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${classList }" var="cl">
							<tr>
								<td>${cl.id }</td>
								<td>${cl.teacherName }</td>
								<td>${cl.teacherPhone }</td>
								<td>${cl.startDate }</td>
								<td>${cl.months }</td>
								<td>${cl.studentCount }</td>
								<td>${cl.description }</td>

								<td><c:url var="addNew" value="/classes/edit">
										<c:param name="id" value="${cl.id }"></c:param>
									</c:url> <a href="${addNew }"><i class="bi bi-pencil me-3"></i></a></td>

								<td><c:url var="details" value="/classes/${cl.id }"></c:url>
									<a href="${details }"><i class="bi bi-cursor"></i></a></td>

							</tr>
						</c:forEach>

					</tbody>

				</table>

			</c:otherwise>
		</c:choose>

	</div>


</body>
</html>