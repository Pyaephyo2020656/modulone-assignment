<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
      <h3 class="my-4">Class Details</h3>
      
       <div class="card mb-4">
          <div class="card-header">Class Information</div>
          <div class="card-body row mb-2">
            
            <div class="col">
               <label class="form-label">Teacher</label>
               <span class="form-control">Thidar</span>
            </div>
                        
            <div class="col">
               <label class="form-label">Start Date</label>
               <span class="form-control">2022-10-01</span>
            </div>
                        
            <div class="col">
               <label class="form-label">Duration</label>
               <span class="form-control">3 Months</span>
            </div>
                        
            <div class="col">
               <label class="form-label">Description</label>
               <span class="form-control">One Stop Batch 4</span>
            </div>
          
          </div>
           
          
       </div>
       
        <div class="d-flex justify-content-between mb-4">
        	
        <ul class="nav nav-pills ">
          <li class="nav-item">
             <button class="nav-link active" data-bs-toggle="pill" data-bs-target="#registrations"><i class="bi bi-people-fill"></i> Registrations</button>
          </li>
          <li class="nav-item">
             <button class="nav-link" data-bs-toggle="pill" data-bs-target="#leaves"> <i class="bi bi-person-x"></i> Leave Application</button>
          </li>
        </ul>
          
          <div>
              <c:url var="editClass" value="/classes/edit">
                 <c:param name="id" value="1"></c:param>
              </c:url>
              <a href="${ editClass}" class="btn btn-outline-danger"> <i class="bi bi-pencil"></i> Edit Class</a>
              <c:url var="addRegistration" value="/classes/registration">
                 <c:param name="classId" value="1"></c:param>
              </c:url>
              <a href="${addRegistration }" class="btn btn-outline-primary"><i class="bi bi-plus-lg"></i> Add New Registration</a>
          </div>
 
         
        </div>
       
       
        
        <div class="tab-content" id="contents">
        
	        <div class="tab-pane fade show active" id="registrations">
	          <!-- Class Information  -->
	          
	           <c:import url="/jsp/include/class-registration.jsp"></c:import>
	    	</div>
          
          	<div class="tab-pane fade show " id="leaves">
				<!-- Leave Information -->
				<c:import url="/jsp/include/class-leaves.jsp"></c:import>
			</div>
          
        </div>
      
   </div>
   

</body>
</html>