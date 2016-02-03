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
       			 			<td><h5><form:input path="lastName" /></h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>First name: </h4></td>
       			 			<td><h5><form:input path="firstName" /></h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>login: </h4></td>
       			 			<td><h5><form:input path="email" /></h5></td>        		        			
        				</tr>
        				
        				
        				
        			</tbody>
					</table>
	
	
	
	
	
		<%-- <ul>
			
			<li>lastName: <form:input path="lastName" /></li>
			<li>Name: <form:input path="firstName" /></li>
			<li>email: <form:input path="email" /></li>
			<li>password: <form:input path="password" /></li>
			
		</ul> --%>
		
	</form:form>
</div>

<%-- 
	<form:form action="cEditClient" method="post" modelAttribute="client">
		<ul>
			<li><form:input path="id" type="hidden"/></li>
			<li>Last name: <form:input path="lastName"/></li>		
			<li>First name: <form:input path="firstName"/></li>
			<li>email: <form:input path="email"/></li>
			
		</ul>
		
	</form:form> --%>
