<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-hover">
    <thead>
    	<tr>
    	<th>Student</th>
    	<th>Phone</th>
    	<th>Apply Date</th>
    	<th>Leave Start</th>
    	<th>Leaves Days</th>
    	<th>Reason</th>
    		
    	</tr>
    </thead>
    <tbody>
    
          <c:forEach items="${dto.leaves }"  var="leave">
    	<tr>
    		<td>${leave.student }</td>
    		<td>${leave.studentPhone }</td>
    		<td>${leave.applyDate }</td>
    		<td>${leave.startDate }</td>
    		<td>${leave.days } Days</td>
    		<td>${leave.reason }</td> 		
    	</tr>
    	</c:forEach>
    </tbody>
</table>