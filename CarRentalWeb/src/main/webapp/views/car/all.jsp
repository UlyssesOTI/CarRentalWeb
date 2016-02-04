<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>




<div class="panel">
<c:forEach var="car" items="${cars}">

<table class="tableClient">
					<thead>
      					<tr>
  			      			<th></th>     			  			
  			      			<th></th>
       					</tr>
    				</thead>
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h3>Image:</h3></td>
       			 			<td><h5><img  src="data:image/jpeg;base64,${car.image}" height="150" width="250"/></h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>${car.markName}</h3></td>
       			 			<td><h3>${car.modelName}</h3></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>Reg number: </h3></td>
       			 			<td><h5>${car.regNumber}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>Reg date: </h3></td>
       			 			<td><h5>${car.regDate}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>Seats: </h3></td>
       			 			<td><h5>${car.seats}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h3>Gearbox: </h3></td>
       			 			<td><h5>${car.gearBox}</h5></td>        		        			
        				</tr>
        				
        				
        				
        				<tr class="success">
       			 			<td><h3>Color: </h3></td>
       			 			<td><h5>${car.color}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>Day price:</h3></td>
       			 			<td><h5> ${car.dayPrice}</h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td></td>
       			 			<td>
       			 				<form:form action="mEditCar" method="post">
									<input type="hidden" name="id" value="${car.id}">
									<button type="submit">Edit</button>
								</form:form>	
							</td>        		        			
        				</tr>
        				
        				
        			</tbody>
					</table>
				
</c:forEach>
</div>


	

		