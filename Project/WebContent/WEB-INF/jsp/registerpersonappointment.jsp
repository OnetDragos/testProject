<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="hello.entities.User" %>
<%@ page import="hello.entities.Appointment" %>
<%@ page import="hello.entities.PersonAppointment" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Appointment Page</title>

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
          <div class="row mt">
      
    </div>
            <div class="card-header" style="background:DeepSkyBlue">
              <h2 class="text-left my-auto font-weight-light">Enter your new Appointment</h2>
            </div>
              <div class="card-body">
                  <form:form class="form-signin" method="POST" action="/Project/appointment2">
                  
                  
                  	<div class="form-label-group">
                      <form:input path="date" type="text" id="inputDate" class="form-control mb-2" placeholder="Enter date"/>
                    </div>
                  
                  	<div class="form-label-group">
                      <form:input path="firstName" type="text" id="inputFirstName" class="form-control mb-2" placeholder="Enter first name"/>
                    </div>
                    <div class="form-label-group">
                      <form:input path="lastName" type="text" id="inputLastName" class="form-control mb-2" placeholder="Enter last name"/>
                    </div>
                	<div class="form-label-group">
                      <form:input path="age" type="int" id="inputAge" class="form-control mb-2" placeholder="Enter age"/>
                    </div>
                    <div class="form-label-group">
                      <form:input path="sex" type="text" id="inputSex" class="form-control mb-2" placeholder="Enter sex"/>
                    </div>
                    <div class="form-label-group">
                      <form:input path="place" type="text" id="inputPlace" class="form-control mb-2" placeholder="Enter city" />
                    </div>
                    
					<div class="form-label-group">
                      <form:input path="domain" type="text" id="inputDomain" class="form-control mb-2" placeholder="Enter domain" />
                    </div>
                    
                    <div class="form-label-group">
                      <form:input path="problem" type="text" id="inputProblem" class="form-control mb-2" placeholder="Enter the problem" />
                    </div> 
                    
                    <div class="form-label-group">
                      <form:input path="dr_name" type="text" id="inputDrName" class="form-control mb-2" placeholder="Enter dr. name" />
                    </div>                   
     
                    <button class="btn btn-sm btn-default btn-block mt-4" type="submit">Send you appointment</button>
                    
                                   
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