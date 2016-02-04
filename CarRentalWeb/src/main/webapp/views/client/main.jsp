<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
	  $("#datepicker1").datepicker({
		    minDate: "0",			
		    maxDate: "+1m +1w +3d"  
		});
    
  });
  $(function() {
	  $("#datepicker2").datepicker({
		    minDate: "1",			
		    maxDate: "+1m +1w +4d"  
		});
	  });
  function formSubmit(form)
  {
  document.getElementById(form).submit();
  }
  
  function formFilterSubmit(form, paramName, paramVal)
  {
  document.getElementById(form).setAttribute(paramName, paramVal).submit();
  }
 
  </script>
</head>
	

</head>
<body>
	
	<div class="panel">
	
		<div class="filterPanel">
		
		<form id="frmFilter" method="post">
		
		
		
		<table class="table">
   			<thead>
      			<tr>
  			      	<th>Pick-Up Date</th>
     			  	<th>Drop-Off Date</th>
        			<th>Mark</th>
        			<th>Gear box</th>
        			<th>Min price</th>
        			<th>Max price</th>
      			</tr>
    		</thead>
    		<tbody>
      			<tr class="success">
        			<td><input type="text" id="datepicker1" name="begin" value="${begin}"></td>
        			<td><input type="text" id="datepicker2" name="end" value="${end}"></td>
        			<td>
        				<select name="mark" >
						<option  value="0">All</option>
						<c:forEach var="mark" items="${marks}">
							<c:choose>
    							<c:when test="${mark.id == markId}">
        							 <option  value="${mark.id}" selected="selected" >${mark.markName}</option>     									
    							</c:when>    
    							<c:otherwise>
        							 <option  value="${mark.id}" >${mark.markName}</option>
   								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
					</td>
					<td>
						<select name="gearBox">
							<option  value="">All</option>
							<c:forEach var="gearBox" items="${gearBoxs}">
								<c:choose>
    								<c:when test="${gearBox.name() == gearBoxId}">
        								 <option value="${gearBox.name()}" selected="selected" >${gearBox}</option>     									
    								</c:when>    
    								<c:otherwise>
        								 <option value="${gearBox.name()}">${gearBox}</option>
   									</c:otherwise>
								</c:choose>
								
							</c:forEach>
						</select>
					</td>
					<td><input type="text" name="minPrice" value="${minPrice}"></td>
					<td><input type="text" name="maxPrice" value="${maxPrice}"></td>
					<td><button class="paginButton"  onclick="formFilterSubmit('frmFilter','action','AvailableModels')" value="Submit">Find</button></td>
      			</tr>
          	</tbody>
  		</table>
  		
  		
  		
  		
  		
  		
  		<div class="pagination">
    		
            	<c:forEach var="i" begin="${1}" end="${pages}">           
            		<button class="paginButton" onclick="formFilterSubmit('frmFilter','action','AvailableModels${i}')" value="${i}">${i}</button>
            		
                	<%-- <li class="active"><a href="${pageUrl}/${i}"><c:out value="${i}" /></a></li> --%>
		       </c:forEach>
      
    		
		</div>
  		
  		
		</form>
		
		</div>
	
		<div class="CarList">
			<c:forEach var="model" items="${models}">
			<form:form id="frm${model.id}" action="cReserveModel" method="post">
								<input type="hidden" name="begin" value="${begin}">
								<input type="hidden" name="end" value="${end}">
								<input type="hidden" name="id" value="${model.id}">
								
				<div class="CarResult" onclick="formSubmit('frm${model.id}')" style="cursor: pointer;">
				<div class="pricing">					
					<p class="duration">Price for ${days} day(s):</p>		  			       				
       			 	<p class="now">${days*model.dayPrice}</p>        			      			
				</div>
					<div class="CarResultDetail">
					
						<h4 class="headerCarList">
							<img  src="data:image/jpeg;base64,${model.image}" height="150" width="250"/>
						</h4>
						

						
						<table class="tableModeSpec">
   			<thead>
      			<tr>
  			      	<th>Option</th>
     			  	<th>Description</th>
       			</tr>
    		</thead>
    		<tbody>
      			<tr class="success">
        			<td>Mark name</td>
        			<td>${model.markName}</td>
        		</tr>
        		<tr class="success">
        			<td>Model </td>
        			<td>${model.modelName}</td>
        		</tr>
        		<tr class="success">
        			<td>Seats </td>
        			<td>${model.seats}</td>
        		</tr>
        		<tr class="success">
        			<td>Gear box</td>
        			<td>${model.gearBox}</td>
        		</tr>
        		<tr class="success">
        			<td>Day price</td>
        			<td>${model.dayPrice}</td>
        		</tr>
        	</tbody>
  		</table>
  		
							
						
						
					</div>
					
				</div>		
				</form:form>			
			</c:forEach>
	
		
		</div>


	</div>
	
	 


</body>
</html>