<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-hover">
    <thead>
    	<tr>
    	  <th>Registration Date</th>
    	  <th>Student</th>
    	  <th>Phone</th>
    	  <th>Edit</th>
    	  <th>Details</th>
    	</tr>
    </thead>
     
     <tbody>
     
            <c:forEach items="${dto.registrations }"  var="reg">
            
               <tr>
               		    	<td>${reg.registrationDate }</td>
					     	<td>${reg.student}</td>
					     	<td>${reg.studentPhone }</td>
     	<td>
     	  	 <c:url var="edit" value="/classes/registration">
		        <c:param name="classId" value="${reg.classId }"></c:param>
		          <c:param name="studentId" value="${reg.studentId }"></c:param>
		          <c:param name="teacherName" value="${reg.teacher }"></c:param>
		          <c:param name="startDate" value="${reg.startDate }"></c:param>
		          
		       </c:url>
		       <a href="${edit }"><i class="bi bi-pencil me-2"></i></a>
     	</td>
     	
     	<td>
     	 	<c:url var="details" value="/classes/registration/${reg.classId }/${reg.studentId }" ></c:url>
		       <a href="${details }"><i class="bi bi-cursor"></i></a>
     	</td>
               </tr>
            
            </c:forEach>
 
     </tbody>
   
</table>