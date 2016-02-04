<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="panel">
	<form:form action="mUpdateMark" method="post" modelAttribute="mark">
	 	<form:input path="id" type="hidden"/>
		<table class="tableClient">
						<tr>
  			      			<th>Property</th>     			  			
  			      			<th>Value</th>  			      			
       					</tr>
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h3>Mark name: </h3></td>
       			 			<td><h5> <form:input path="markName" /></h5></td>        
       			 			<td><form:errors class="error" path="markName"  /></td>	 			        			
        				</tr>
        				<tr class="success">
       			 			<td></td>
       			 			<td><button type="submit" name="operation" value="update">Save</button></td>       
       			 				        			
        				</tr>
			</tbody>
			</table>		
	</form:form>
</div>