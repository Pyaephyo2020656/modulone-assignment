<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave | HOME</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
	
  <c:import url="/jsp/include/navbar.jsp">
  <c:param name="view" value="classes"></c:param>
  </c:import>
  
   <div class="container">
      <h3 class="my-4">${empty param.id ? 'Add New ':'Edit '}Class</h3>
      
       <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12">
         	<c:url var="save" value="/classes"  ></c:url>
         	<sf:form action="${save }" method="post" modelAttribute="classForm">
         	   <sf:hidden path="id"/>
         	   
         	   <div class="mb-3">
         	      <label class="form-label">Teacher</label>
         	      <sf:select path="teacher" items="${teachers }" itemLabel="name" itemValue="id" cssClass="form-select"></sf:select>
         	   </div>
         	   
         	   <div class="row mb-2">
         	     <div class="col">
         	        <label class="form-label">Start Date</label>
         	        <sf:input path="start" type="date" cssClass="form-control"/>
         	     </div>
         	     <div class="col">
         	        <label class="form-label">Months</label>
         	        <sf:input path="months" type="number" cssClass="form-control" placeholder="Enter Months"/>
         	     </div>
         	   </div>
         	   
         	    <div class="mb-3">
         	        <label class="form-label">Description</label>
         	        <sf:textarea path="description" cssClass="form-control"/>
         	    </div>
         	    <div>
         	       <button  type="submit" class="btn btn-outline-danger">Save</button>
         	    </div>
         	</sf:form>
         </div>
       </div>
   </div>
   

</body>
</html>