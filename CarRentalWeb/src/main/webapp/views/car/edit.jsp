<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="panel">
	<form:form action="mEditCar" method="post" modelAttribute="car" enctype="multipart/form-data" >
		<form:input path="id" type="hidden"/>
		<table class="tableClient">
				<thead>
      					<tr>
  			      			<th>Option</th>     			  			
  			      			<th>Value</th>  			      			
       					</tr>
    				</thead>
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h3>Registration Number:</h3></td>
       			 			<td><h5><form:input path="regNumber" /></h5></td>
       			 			<td><form:errors path="regNumber"  /></td>             		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>Model: </h3></td>
       			 			<td><h5><form:select path="model">
										<form:options items="${models}" itemValue="id" itemLabel="modelName" />
									</form:select></h5></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h3>Model: </h3></td>
       			 			<td><h5><form:select path="color">
										<c:forEach var="color" items="${colors}">
												<option value="${color}">${color}</option>
										</c:forEach>
									</form:select>
								</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td></td>
       			 			<td><button type="submit" name="operation" value="new">Save</button></td>        		        			
        				</tr>
        				  				
        			</tbody>
					</table>
	
	</form:form>
</div>
