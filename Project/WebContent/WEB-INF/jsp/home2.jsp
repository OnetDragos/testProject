<%@ page import="hello.entities.User" %>
<%@ page import="hello.entities.Appointment" %>
<%@ page import="hello.entities.PersonAppointment" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "test";
	String userid = "root";
	String password = "dragos";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor's page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	 background-position: center;
	 background-repeat: no-repeat;
	 background-size: cover;
	 position: relative;
	 height:auto;
	min-height:30px;
	height:auto !important;        
	height:30px;
	}
	.container{
	background-color: #b9edff;
	height:auto;
	min-height:30px;
	height:auto !important;        
	height:30px;
	}
	p.b {
    font-family: "Arial Black", Gadget, sans-serif;
}
</style>
</head>
<body>
<div class="hero-image">	
	<div class="row mt">
        <div class="col-sm-12">
        <div class="w3-container w3-tangerine">
        	<% User user = (User)request.getAttribute("user");%>
            <p class="w3-jumbo">Hello dr. <%=user.getLastName() %> <%=user.getFirstName() %> </p>
              
		</div>
        </div>
    </div>
	<div class="container">
  <h2>Users list</h2>
  <p class="b">Here are all users registered until today.</p>
  <table class="table">
  	<thead>
      <tr>
        <th>Email</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Phone(+0040)</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <%
	try{connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from user";
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()){
			User user2 = (User)request.getAttribute("user");
			user2.setId(resultSet.getInt("id"));
			user2.setEmail(resultSet.getString("email"));
			user2.setPassword(resultSet.getString("password"));
			user2.setFirstName(resultSet.getString("first_name"));
			user2.setLastName(resultSet.getString("last_name"));
			user2.setPhone(resultSet.getString("phone"));
			if (resultSet.getInt("admin")==0)
				user2.setAdmin(false);
			else
				user2.setAdmin(true);
			
		%>
			
		<tr class="success">
			<td><%=resultSet.getString("email") %></td>
			<td><%=resultSet.getString("first_name") %></td>
			<td><%=resultSet.getString("last_name") %></td>
			<td><%=resultSet.getInt("phone") %></td>
			<td><% if(!user2.isAdmin()){ %>
						<form:form method="POST" action="/Project/deleteUser">
					 	<input name="id" type="hidden" value="<%=user2.getId()%>"/>
					 	<input type="submit" class="btn btn-info" value="Delete"/>
					 	</form:form>
					<%} else { %>
						<p style="color:red;">Admin.</p>
					<% } %>	
			
			</td>
		</tr>
		<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
 
    </tbody>
  </table>
  <h2>Appointment list</h2>
  <p class="b">Here are all appointments of your users.</p>
  <table class="table">
    <thead>
      <tr>
        <th>Date</th>
        <th>Place</th>
        <th>Domain</th>
        <th>Problem</th>
        <th>Dr Name</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <%
	try{connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select id,date,place,domain,problem,dr_name from appointment";
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()){
			Appointment appointment2 = new Appointment("a","b","c","s","p");
			appointment2.setId(resultSet.getInt("id"));
			appointment2.setDate(resultSet.getString("date"));
			appointment2.setDomain(resultSet.getString("domain"));
			appointment2.setProblem(resultSet.getString("problem"));
			appointment2.setDr_name(resultSet.getString("dr_name"));
		%>
			
		<tr class="warning">
			<td><%=resultSet.getString("date") %></td>
			<td><%=resultSet.getString("place") %></td>
			<td><%=resultSet.getString("domain") %></td>
			<td><%=resultSet.getString("problem") %></td>
			<td><%=resultSet.getString("dr_name") %></td>
			<td>
					
					<form:form method="POST" action="/Project/deleteApp">
					 	<input name="id" type="hidden" value="<%=appointment2.getId()%>"/>
					 	<input type="submit" class="btn btn-info" value="Delete"/>
					 	</form:form></td>
			
			</td>
		</tr>
		<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
 
    </tbody>
  </table>
  
  
  <p class="b">Here are all new appointments.</p>
  <table class="table">
    <thead>
      <tr>
        <th>Date</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Age</th>
        <th>Sex</th>
        <th>Place</th>
        <th>Domain</th>
        <th>Problem</th>
        <th>Dr. Name</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <%
	try{connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from personappointment";
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()){
			//PersonAppointment appointment3 = (PersonAppointment)request.getAttribute("personappointment");
			PersonAppointment appointment3=new PersonAppointment(1,"a","b","c",1,"s","p","d","p","d");
			appointment3.setId(resultSet.getInt("id"));
			appointment3.setDate(resultSet.getString("date"));
			appointment3.setFirstName(resultSet.getString("first_name"));
			appointment3.setLastName(resultSet.getString("last_name"));
			appointment3.setAge(resultSet.getInt("age"));
			appointment3.setSex(resultSet.getString("sex"));
			appointment3.setPlace(resultSet.getString("place"));
			appointment3.setDomain(resultSet.getString("domain"));
			appointment3.setProblem(resultSet.getString("problem"));
			appointment3.setDr_name(resultSet.getString("dr_name"));
			
		%>
			
		<tr class="warning">
			<td><%=resultSet.getString("date") %></td>
			<td><%=resultSet.getString("first_name") %></td>
			<td><%=resultSet.getString("last_name") %></td>
			<td><%=resultSet.getInt("age") %></td>
			<td><%=resultSet.getString("sex") %></td>
			<td><%=resultSet.getString("place") %></td>
			<td><%=resultSet.getString("domain") %></td>
			<td><%=resultSet.getString("problem") %></td>
			<td><%=resultSet.getString("dr_name") %></td>
			<td><form:form method="POST" action="/Project/deletePersApp">
					 	<input name="id" type="hidden" value="<%=appointment3.getId()%>"/>
					 	<input type="submit" class="btn btn-info" value="Delete"/>
					 	</form:form></td>
		</tr>
		<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
 
    </tbody>
  </table>
</div>
</div>
</body>
</html>