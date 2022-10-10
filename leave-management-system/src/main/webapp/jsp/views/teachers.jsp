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



		<form class="row mb-4">
			<div class="col-auto">
				<label class="form-label">Name</label> <input type="text"
					name="name" class="form-control"   value="${param.name }" placeholder="Search Name" />
			</div>
			<div class="col-auto">
				<label class="form-label">Phone</label> <input type="tel"
					name="phone" class="form-control"  value="${param.phone }" placeholder="Search Phone" />
			</div>
			<div class="col-auto">
				<label class="form-label">Email</label> <input type="email"
					name="email" class="form-control"  value="${param.email }" placeholder="Search Email" />
			</div>

			<div class="col btn-wrapper">
				<button class="btn btn-outline-success me-2"> <i class="bi bi-search"></i> Search</button>
				<c:url var="addNew" value="/teachers/edit"></c:url>
				<a href="${addNew }" class="btn btn-outline-danger"><i class="bi bi-plus-lg"></i> Add New</a>
			</div>
		</form>
		
		 <c:choose>
		   <c:when test="${empty list }">
		      <div class="alert alert-info">There is no data.</div>
		   </c:when>
		   
		   <c:otherwise>
		   
		   	<table class="table table-hover">
		     <thead>
		        <tr>
		          <th>ID</th>
		          <th>Name</th>
		          <th>Phone</th>
		          <th>Email</th>
		          <th>Assign Date</th>
		          <th>Class Count</th>
		          <th>Edit</th>
		        </tr>
		     </thead>
		     
		  <tbody>
		     <c:forEach items="${list }"  var="t">
		     		 <tr>
		      <td>${t.id }</td>
		      <td>${t.name }</td>
		      <td>${t.phone }</td>
		      <td>${t.email }</td>
		      <td>${t.assignDate }</td>
		      <td>${t.classCount }</td>
		      <td>
		       <c:url value="/teachers/edit" var="edit">
		        <c:param name="id" value="${t.id }"></c:param>
		       </c:url>
		       <a href=" ${edit }"> <i class="bi bi-pencil"></i></a>
		      </td>
		    </tr>
		     </c:forEach>
		   
		    
		  </tbody>
		    
		</table>
		   
		   </c:otherwise>
		 
		 </c:choose>


	

	</div>



</body>
</html> 