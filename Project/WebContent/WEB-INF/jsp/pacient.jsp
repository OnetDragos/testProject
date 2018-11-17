<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Student Information</h2>

<div class="container">
        <div class="row justify-content-center align-items-center" id="central">
          <div class="card" style="width: 25rem;">
            <div class="card-header">
              <h2 class="text-center my-auto">Login</h2>
            </div>
              <div class="card-body">
                
                  <form:form class="form-signin" method="POST" action="/Project/addPacient">
                    <div class="form-label-group">
                      <form:input path="userName" type="email" id="inputEmail" class="form-control mb-2" placeholder="Email address" required autofocus/>
                    </div>
                    <div class="form-label-group">
                      <form:input path="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required/>
                    </div>
     
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                    <div class="mt-3">
                      <a href="#" class="float-left text-dark">Register</a>
                    </div>
                  </form:form> 
              </div>
          </div>
        </div>
    </div>

<form:form method="POST" action="/Project/addPacient">
	<table>
		<tr>
			<td><form:label path="name">Name</form:label></td>
			<td><form:input path="name" /></td>	
		</tr>
		<tr>
			<td><form:label path="age">Age</form:label></td>
			<td><form:input path="age" /></td>	
		</tr>
		<tr>
			<td><form:label path="id">id</form:label></td>
			<td><form:input path="id" /></td>	
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Submit"/>
			</td>	
		</tr>
	</table>
</form:form>

</body>
</html>