<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leaves | Home</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<c:url var="commonCss" value="/resources/application.css"></c:url>
<link rel="stylesheet" href="${commonCss}" />

</head>
<body>

	<c:import url="/jsp/include/navbar.jsp">
		<c:param name="view" value="leaves"></c:param>
	</c:import>

	<div class="container">
		
		<h3 class="my-4">Leave List </h3>
		

		<form class="row mb-4">

			<div class="col-auto">
				<label class="form-label">Date From</label>
				<input type="date" name="from" class="form-control" value="${ param.phone }" />
			</div>

			<div class="col-auto">
				<label class="form-label">Date To</label>
				<input type="date" name="to" class="form-control" value="${ param.email}" />
			</div>
			
	
			<div class="col btn-wrapper">
				<button class="btn btn-outline-success me-2"  ><i class="bi bi-search"></i> Search</button>
			</div>
		</form>
		
		<c:choose>			
			<c:when test="${ empty leaveList }">
				<div class="alert alert-info">There is no Leave on these Days.</div>
			</c:when>
			
			<c:otherwise>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Class Info</th>
							<th>Teacher</th>
							<th>Apply At</th>
							<th>Leave Start</th>
							<th>Leave Days</th>
							<th>Reason</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${ leaveList }" var="leaves">
							<tr>
								<td>${ leaves.classInfo } (${ leaves.classStart })</td>
								<td>${ leaves.teacher }</td>
								<td>${ leaves.applyDate }</td>
								<td>${ leaves.startDate }</td>
								<td>${ leaves.days }</td>
								<td>${ leaves.reason }</td>
							</tr>
						
						</c:forEach>
					</tbody>
				</table>			
			</c:otherwise>
		
		</c:choose>	
	</div>
</body>
</html>