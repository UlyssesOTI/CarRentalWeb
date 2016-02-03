<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="panel">
	<form:form action="cSaveReservation" method="post" modelAttribute="reservation" >
			<fmt:formatDate value="${reservation.beginDate}" pattern="MM/dd/yyyy" var="fbeginDate"/>
			<fmt:formatDate value="${reservation.endDate}" pattern="MM/dd/yyyy" var="fendDate"/>
	
		<h3>New reservation</h3>
	
		<table class="tableClient">
					
    				<tbody class="tbodyClient">
      			
       			 		<tr class="success">
       			 			<td><h4>Begin date:</h4></td>
       			 			<td><form:input path="beginDate" value ="${fbeginDate}" readonly="true"/> </td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>End date: </h4></td>
       			 			<td><form:input path="endDate" value ="${fendDate}" readonly="true"/></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Sum: </h4></td>
       			 			<td> <form:input path="summ" readonly="true"/></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h4>Model: </h4></td>
       			 			<td><form:select path="model"> 
							<option value="${reservation.model.id}"> ${reservation.model.modelName}</option>
					   </form:select></td>        		        			
        				</tr>
        				
        				<tr class="success">
       			 			<td><h4>Client: </h4></td>
       			 			<td><form:select path="client"> 
						<form:option value="${reservation.client.login}" label="${reservation.client.lastName} ${reservation.client.firstName}" />
					  </form:select></td>        		        			
        				</tr>
        				
        				<tr >
       			 			<td></td>
       			 			<td><button type="submit" name="operation" value="add">Confirm reservation</button></td>        		        			
        				</tr>
        			</tbody>
					</table>
	
	
	
	
	
		
	</form:form>
</div>


	<%-- <form:form action="cSaveReservation" method="post" modelAttribute="reservation" >
		<ul>
			<fmt:formatDate value="${reservation.beginDate}" pattern="MM/dd/yyyy" var="fbeginDate"/>
			<fmt:formatDate value="${reservation.endDate}" pattern="MM/dd/yyyy" var="fendDate"/>
			<li>beginDate:<form:input path="beginDate" value ="${fbeginDate}" readonly="true"/> </li>
			<li>endDate: <form:input path="endDate" value ="${fendDate}" readonly="true"/></li>
			<li>summ: <form:input path="summ" /></li>
			<li>model: <form:select path="model"> 
							<option value="${reservation.model.id}"> ${reservation.model.modelName}</option>
					   </form:select>
			</li>
			<li>client: <form:select path="client"> 
						<form:option value="${reservation.client.id}" label="${reservation.client.lastName} ${reservation.client.firstName}" />
					  </form:select> 
			</li>	
		</ul>
		<button type="submit" name="operation" value="add">Save</button>
	</form:form> --%>


