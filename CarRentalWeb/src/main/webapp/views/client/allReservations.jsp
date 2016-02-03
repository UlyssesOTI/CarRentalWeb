<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="panel">
<c:forEach var="reservation" items="${reservations}">

<h4>My Reservations</h4>
<table class="tableClient">
					
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h4>Date: </h4></td>
       			 			<td><h5>${reservation.date}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h4>Model: </h4></td>
       			 			<td><h5>${reservation.modelName}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h4>Client last name: </h4></td>
       			 			<td><h5>${reservation.clientLastName}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h4>Client first name: </h4></td>
       			 			<td><h5>${reservation.clientFirstName}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h4>Begin date: </h4></td>
       			 			<td><h5>${reservation.beginDate}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>End Date: </h4></td>
       			 			<td><h5>${reservation.endDate}</h5></td>        		        			
        				</tr>
        				
        				
        				
        				<tr class="success">
       			 			<td><h4>Sum: </h4></td>
       			 			<td><h5>${reservation.summ}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td></td>
       			 			<td><c:if test="${reservation.contractId =='0'}">
							<form:form action="cDiscardReservation" method="post">
							<input type="hidden" name="id" value="${reservation.id}">
							<button type="submit">Discard reservation</button>
						</form:form>
				</c:if></td>        		        			
        				</tr>
        			</tbody>
					</table>
				
</c:forEach>
</div>
<%-- <div class="CarList">
		<c:forEach var="reservation" items="${reservations}">
		
			<div class="CarResult">
				
				<div class="CarResultDetail">
					<ul>
						<li>Date: ${reservation.date}</li>
						<li><h4>${reservation.modelName}</h4></li>
						<li>Client last name: ${reservation.clientLastName}</li>
						<li>Client first name: ${reservation.clientFirstName}</li>
						<li>Begin date: ${reservation.beginDate}</li>
						<li>End date: ${reservation.endDate}</li>
						<li>Sum: ${reservation.summ}</li>	
						<c:if test="${reservation.contractId =='0'}">
							<form:form action="cDiscardReservation" method="post">
							<input type="hidden" name="id" value="${reservation.id}">
							<button type="submit">Discard reservation</button>
						</form:form>	
						</c:if>
											
					</ul>
					
				</div>
				
			</div>		
			
		</c:forEach>
	
		
	</div> --%>