<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>
<div class="panel">

<h3 align="center" >Models:</h3>
<c:forEach var="model" items="${models}">
<div class="CarResultDetailManager">
<h5 class="headerCarList"><img  src="data:image/jpeg;base64,${model.image}" height="150" width="250"/></h5>
<table class="tableModeSpec">
					<thead>
      					<tr>
  			      			<th>Option</th>     			  			
  			      			<th>Value</th>
       					</tr>
    				</thead>
    				<tbody class="tbodyClient">
      			
       			 		
       			 			
						<tr class="success">
       			 			<td><h3>Mark</h3></td>
       			 			<td><h3>${model.markName}</h3></td>        		        			
        				</tr>       			 			       			 			
       			 					
        				
        				
        				<tr class="success">
       			 			<td><h3>Model</h3></td>
       			 			<td><h3>${model.modelName}</h3></td>        		        			
        				</tr>
        				
        				
        				
        				<tr class="success">
       			 			<td><h3>Seats: </h3></td>
       			 			<td><h5>${model.seats}</h5></td>        		        			
        				</tr>
        				<tr class="success">
       			 			<td><h3>Gearbox: </h3></td>
       			 			<td><h5>${model.gearBox}</h5></td>        		        			
        				</tr>
        				
        				       
        				<tr class="success">
       			 			<td><h3>Day price:</h3></td>
       			 			<td><h5> ${model.dayPrice}</h5></td>        		        			
        				</tr>
        				
        				
        				<tr class="success">
       			 			<td></td>
       			 			<td><form:form action="mEditModel" method="post">
							<input type="hidden" name="id" value="${model.id}">
							<button type="submit">Edit</button>
						</form:form>	</td>        		        			
        				</tr>
        				
        				
        			</tbody>
					</table>
				</div>
</c:forEach>
</div>


	
<%-- 
	<div class="CarList">
		<c:forEach var="model" items="${models}">
		
			<div class="CarResult">
				
				<div class="CarResultDetail">
				
					<h4 class="headerCarList">
						<img  src="data:image/jpeg;base64,${model.image}" height="150" width="250"/>
					</h4>
					<ul>
						<li><h3>${model.markName}</h3></li>
						<li><h3>${model.modelName}</h3></li>
						<li>Seats: ${model.seats}</li>
						<li>Gear box: ${model.gearBox}</li>
						<li>Day price: ${model.dayPrice}</li>	
						<form:form action="mEditModel" method="post">
							<input type="hidden" name="id" value="${model.id}">
							<button type="submit">Edit</button>
						</form:form>						
					</ul>
					
				</div>
				
			</div>		
			
		</c:forEach>
	
		
	</div>
	 --%>
	
		