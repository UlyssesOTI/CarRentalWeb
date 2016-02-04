<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="panel">
	<form:form action="cEditClient" method="post" modelAttribute="client">
	
	
		<table class="tableClient">
					
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h4>Last name: </h4></td>
       			 			<td><h5><form:input path="lastName" readonly="true" /></h5></td>    
       			 			<td><form:errors class="error" path="lastName"  /></td>    		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>First name: </h4></td>
       			 			<td><h5><form:input path="firstName" readonly="true" /></h5></td>  
       			 			<td><form:errors class="error" path="firstName"  /></td>      		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Email: </h4></td>
       			 			<td><h5><form:input path="email" readonly="true" /></h5></td>    
       			 			<td><form:errors class="error" path="email"  /></td>    		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>login: </h4></td>
       			 			<td><h5><form:input path="login" readonly="true" /></h5></td>    
       			 			<td><form:errors class="error" path="login"  /></td>    		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h4>Rating: </h4></td>
       			 			<td><h5><form:input path="rating" readonly="true" /></h5></td>    
       			 			<td><form:errors class="error" path="rating"  /></td>    		        			
        				</tr>
        				
        				
        			</tbody>
					</table>
	
	
	
	
	
		
		
	</form:form>
</div>


