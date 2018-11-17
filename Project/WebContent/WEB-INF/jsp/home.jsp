<%@ page import="hello.entities.User" %>
<%@ page import="hello.entities.Appointment" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
  <style>
  .w3-tangerine {
    font-family: "Tangerine", serif;
     text-align: center;
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
.container{
background-color: #b9edff;
height: 500px;
}
p.b {
    font-family: "Arial Black", Gadget, sans-serif;
}
</style>
</head>
<body>
<div class="hero-image">
	<div class="row mt">
        <div class="col-sm-12 mt-4">
        	<div class="w3-container w3-tangerine">
        	<% User user = (User)request.getAttribute("user");%>
            <p class="w3-jumbo">You are logged in as <%=user.getLastName() %> <%=user.getFirstName() %> </p>
              
		</div>
        </div>
    </div>

<div class="container mt-3">
  <p class="b">You can choose to make an appointment using the list below:</p>    
          
  <table class="table table-hover">
     <thead class="thead-dark">
      <tr>
        <th>Domain</th>
        <th>Place</th>
        <th>Doctor</th>
        <th>Appointment</th>
        
      </tr>
    </thead>
    <tbody>
    <form:form class="form-add" method="GET" action="/Project/registerAppointment">
       <tr class="table-primary">
   		
        <td>Urology</td>
        <td>Cluj-Napoca</td>
        <td>dr. Mihai Ioan</td>
        <td>
                     <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
        </td>
        
      </tr>
       <tr class="table-primary">
        <td>Urology</td>
        <td>Bucuresti</td>
        <td>dr. Alexandru Ioan</td>
         <td>
                      <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
             
        </td>
      </tr>
      <tr class="table-success">
        <td>Dermatology</td>
        <td>Cluj-Napoca</td>
        <td>dr. Mihai Ioan</td>
         <td>
                      <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
             
        </td>
      </tr>
     
      <tr class="table-info">
        <td>Endocrinology</td>
        <td>Cluj-Napoca</td>
        <td>dr. Mihai Ioan</td>
         <td>
                      <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
             
        </td>
      </tr>
     <tr class="table-warning">
        <td>Neurology</td>
        <td>Cluj-Napoca</td>
        <td>dr. Mihai Ioan</td>
         <td>
                   	  <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
             
        </td>
      </tr>
      <tr class="table-warning">
        <td>Neurology</td>
        <td>Bucuresti</td>
        <td>dr. Alexandru Ioan</td>
         <td>
                      <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
             
        </td>
      </tr>
      <tr class="table-active">
        <td>Rheumatology</td>
        <td>Cluj-Napoca</td>
        <td>dr. Mihai Ioan</td>
         <td>
                      <button class="btn btn-sm btn-default btn-block mt" type="submit">Add</button>
             
        </td>
      </tr>
       
     
   </form:form>  

    </tbody>
  </table>
   <form:form class="form-else" method="GET" action="/Project/registerAppointment2">
      	
      		  <button class="btn btn-sm btn-default btn-block mt" type="submit">Do you want to make an appointment for someone? (CLICK HERE)</button>
          
           </form:form>
</div>

</div>
</body>
</html>