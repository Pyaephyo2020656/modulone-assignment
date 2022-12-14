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
	
  <c:import url="/jsp/include/navbar.jsp"></c:import>
  
      <div class="container">
               <h3 class="my-4">Teacher Home</h3>
               		<form class="card-body row">
                                 <div class="col-auto">
                                        <input type="date"  name="targetDate" class="form-control"  value="${targetDate }"/>
                                 </div>
                                 
                                    <div class="col-auto">
                                            <button class="btn btn-outline-success" type="submit">
                                               <i class="bi bi-search " ></i> Search
                                            </button>
                                    </div>
                          </form>
                          
                            <div class="row g-3">
                                      <c:forEach items="${list }"  var="item">
                                                 <div class="col-4">
                                                 		 <div class="card">
                                                 		           <div class="card-body">
                                                 		                 <h4>${item.teacher }</h4>
                                                 		                 <div class="text-secondary">${item.details }</div>
                                                 		                 <span class="text-secondary">${item.startDate }</span>
                                                 		                 
                                                 		                  <div class="row mt-4">
                                                 		                          <div class="col-4">
                                                 		                                   <h5>${item.students }</h5>
                                                 		                                   <span class="text-secondary"><i class="bi bi-people"></i> Students</span>
                                                 		                          </div>
                                                 		                           <div class="col">
                                                 		                                   <h5>${item.leaves }</h5>
                                                 		                                   <span class="text-secondary"><i class="bi bi-people-fill"></i> Leaves</span>
                                                 		                          </div>
     
                                                 		                  </div>
                                                 		                  <div class="row mt-4">
                                                 		                        <div class="col">
                                                 		                            <c:url value="/classes/${item.classId }" var="details"></c:url>
                                                 		                        	<a href="${details }" class="btn btn-outline-success"><i class="bi bi-send"></i>Show Details</a>
                                                 		                        </div>
                                                 		                        
                                                 		                  </div>
                                                 		           </div>
                                                  		 </div>
                                                 </div>
                                      		
                                      </c:forEach>
                                     
                            </div>
      </div>
   

</body>
</html>