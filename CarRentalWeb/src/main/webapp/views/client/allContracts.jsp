<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



	
<div class="panel">
	<div class="DocumentList">
		<c:forEach var="contract" items="${contracts}">
		
			<table class="tableClient">
					
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h4>Date: </h4></td>
       			 			<td><h5>${contract.date}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Begin date: </h4></td>
       			 			<td><h5>${contract.beginDate}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>End Date: </h4></td>
       			 			<td><h5>${contract.endDate}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Price: </h4></td>
       			 			<td><h5>${contract.price}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Car info: </h4></td>
       			 			<td><h5>${contract.carInfo}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Reservation info: </h4></td>
       			 			<td><h5>${contract.reservationInfo}</h5></td>        		        			
        				</tr>
        			</tbody>
					</table>
				
				
			
			
		</c:forEach>
	</div>
		
	</div>