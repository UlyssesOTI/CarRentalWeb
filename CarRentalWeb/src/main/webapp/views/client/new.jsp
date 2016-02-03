<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="panel">
	<form:form action="newClient" method="post" modelAttribute="client" enctype="multipart/form-data" >
	
		<table class="tableClient">
					
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h4>Last name: </h4></td>
       			 			<td><h5><form:input path="lastName" /></h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>First name: </h4></td>
       			 			<td><h5><form:input path="firstName" /></h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Email: </h4></td>
       			 			<td><h5><form:input path="email" /></h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>login: </h4></td>
       			 			<td><h5><form:input path="login" /></h5></td>    
       			 			<td><form:errors path="login"  /></td>    		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Password: </h4></td>
       			 			<td><h5> <form:input path="password" /></h5></td>        		        			
        				</tr>
        				
        				<tr >
       			 			<td></td>
       			 			<td><button type="submit" name="operation" value="add">Save</button></td>        		        			
        				</tr>
        			</tbody>
					</table>		
	</form:form>
</div>
