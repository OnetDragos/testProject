<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="hello.entities.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="../css/index.css">
<style>
.container{
position: fixed; /* or absolute */
  top: 10%;
  left: 15%;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: url("image.jpg");
  background-color: #cccccc;
  height: 750px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
</style>
</head>
<body>
<div class="hero-image">
	<div class="container">
	
        <div class="row justify-content-center align-items-center" id="central">
          <div class="card" style="width: 45rem;">
            <div class="card-header" style="background:DeepSkyBlue">
              <h2 class="text-left my-auto font-weight-light">Enter your data</h2>
            </div>
              <div class="card-body">
                
                  <form:form class="form-signin" method="POST" action="/Project/register">
                  
                    <div class="form-label-group">
                      <form:input path="email" type="email" id="inputEmail" class="form-control mb-2" placeholder="Enter email address"/>
                    </div>
                    
                    <div class="form-label-group">
                      <form:input path="password" type="password" id="inputPassword" class="form-control mb-2" placeholder="Enter password" />
                    </div>
                    
					<div class="form-label-group">
                      <form:input path="firstName" type="text" id="inputFirstName" class="form-control mb-2" placeholder="Enter first name" />
                    </div>
                    
                    <div class="form-label-group">
                      <form:input path="lastName" type="text" id="inputLastName" class="form-control mb-2" placeholder="Enter last name" />
                    </div> 
                    
                    <div class="form-label-group">
                      <form:input path="phone" type="text" id="inputPhone" class="form-control mb-2" placeholder="Enter phone number" />
                    </div>                   
     
                    <button class="btn btn-sm btn-default btn-block mt-4" type="submit">Submit</button>
                                   
                  </form:form> 
              </div>
          </div>
        </div>
    </div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</div>
</body>
</html>