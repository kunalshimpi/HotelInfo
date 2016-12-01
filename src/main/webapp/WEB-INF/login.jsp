<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login Page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous" />

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	if(${userBool}){
		alert("successfull");
	}else{
		alert("Invalid Username");
	}
	</script>
</head>
<body>
	<header class="jumbotron"
		style="background-color:#001e4f;font-family:'Segoe UI';color:white;width:100%;">
	<p style="padding: 3px;"></p>
	<h1 class="h1" style="text-align: center">
		<span class="glyphicon-globe glyphicon"></span> &nbsp;International
		Travel Yellow Pages
	</h1>
	<h3 class="h3" style="text-align: right; margin-right: 13%;">&nbsp;User
		Authentication Page</h3>
	<p style="padding: 3px;"></p>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-5"
				style="text-align: center; border: 2px solid black; border-radius: 20px;">
				<h3 class="h3" style="text-align: center;">
					Log In <span class="glyphicon-log-in glyphicon"></span>
				</h3>
				<p style="padding: 15px"></p>





				<form:form id="loginForm" method="post" action="/HotelInfo/login"
					modelAttribute="User">

					<form:input type="text" path="emailId" class="input-lg"
						style="width: 45%;" placeholder="Enter your Username" />
					<br />
					<br />
					<form:input type="password" path="password" class="input-lg"
						style="width: 45%;" placeholder="Enter your Password" />
					<br />
					<br />
					<input class="btn-primary btn-lg btn" type="submit" value="Login" />
				</form:form>

				<br /> <br />
				<p class="alert-info alert">Please do not share your credentials
					with anyone. It is a matter of privacy.</p>
				<p style="padding: 20px"></p>
			</div>
			<div class="col-xs-12 col-md-6 col-md-offset-1"
				style="border: 2px solid black; text-align: center; border-radius: 20px;">
				<h3 class="h3" style="text-align: center;">
					Sign Up <span class="glyphicon-user glyphicon"></span>
				</h3>
				<p style="padding: 15px;"></p>

				<form:form id="addUserForm" method="post"
					action="/HotelInfo/addUser" modelAttribute="User">

					<form:input type="text" class="input-lg" path="firstName"
						style="width: 40%;" placeholder="Enter your First Name" />
					<br />
					<br />
					<form:input type="text" class="input-lg" path="lastName"
						style="width: 40%;" placeholder="Enter your Last Name" />
					<br />
					<br />
					<form:input type="text" class="input-lg" path="emailId"
						style="width: 40%;" placeholder="Enter your Email Id" />
					<br />

					<br />
					<form:select style="width: 40%;" class="input-lg" path="country">
						<form:option value="NONE" label="Select Your	Country:" />
						<form:options items="${countryList}" />
					</form:select>

					<br />
					<br />
					<form:input type="password" class="input-lg" path="password"
						style="width: 40%;" placeholder="Enter your Password" />
					<br />
					<br />
					<input class="btn-primary btn-lg btn" type="submit" value="Sign Up" />
				</form:form>
				<p style="padding: 5px;"></p>
			</div>
		</div>
	</div>
	<p style="padding: 60px;"></p>
</body>
</html>
