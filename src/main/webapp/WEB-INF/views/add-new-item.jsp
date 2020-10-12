<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Kit</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
 <div class="collapse navbar-collapse" id="collapsibleNavbar">
 	<ul class="navbar-nav">
 		<li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/admin/home">ADMIN DASHBOARD</a>
	      </li> 
		<li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/admin/product-list">Kit Item List</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/admin/product-entry">Add Kit</a>
	      </li>
	 </ul> 
	 </div>
	 </nav>
 <h3 class="jumbotron">Add New Kit</h3>
 <section class="container-fluid p-4">
 <div class="col-sm-4">
<form:form action="${pageContext.request.contextPath }/admin/product-save" method="post" modelAttribute="product">  
     
    <br/>        
		<div class="form-group"> 
            <form:label path="productName">Product Name</form:label>  
            <form:input type="text" path="productName" class="form-control"/>  
            <form:errors path="productName" class="alert alert-warning"/>
        </div> 
    <br/>         
        <div class="form-group">
            <form:label path="cost">Product Cost</form:label>  
            <form:input type="number" path="cost" class="form-control" />  
            <form:errors path="cost" class="alert alert-warning"/>
        </div>
    <br/>          
        <div class="form-group">  
            <form:label path="productDescription">Product Description</form:label>  
            <form:input type="text" path="productDescription" class="form-control"/>  
            <form:errors path="productDescription" class="alert alert-warning"/>
        </div>  
    <br/>   
    	<div class="form-group">                          
        <button class="btn pull-right btn-primary">SAVE</button>
    	</div>       
    <br/>             
    </form:form> 
   </div> 
</section>
</body>
</html>