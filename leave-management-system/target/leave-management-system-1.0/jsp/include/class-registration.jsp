<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-hover">
    <thead>
    	<tr>
    	  <th>ID</th>
    	  <th>Registration Date</th>
    	  <th>Student</th>
    	  <th>Phone</th>
    	  <th>Edit</th>
    	  <th>Details</th>
    	</tr>
    </thead>
     
     <tbody>
     	<td>1</td>
     	<td>2022-10-1</td>
     	<td>Aung Aung</td>
     	<td>09704420607</td>
     	<td>
     	  	 <c:url var="edit" value="/classes/registration">
		        <c:param name="registId" value="1"></c:param>
		       </c:url>
		       <a href="${edit }"><i class="bi bi-pencil me-2"></i></a>
     	</td>
     	<td>
     	 	<c:url var="details" value="/classes/registration/1" ></c:url>
		       <a href="${details }"><i class="bi bi-cursor"></i></a>
     	</td>
     </tbody>
   
</table>