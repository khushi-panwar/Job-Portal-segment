<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href ="login.css" rel = "stylesheet">

</head>
<body>


<div class="container">
	<div class="form-container sign-up-container">
		<form >
		
		</form>
		
	</div>
	<div class="form-container sign-in-container">
		<form action = "profiledata" method = "post">
			<h1>Sign in</h1>
			
			<span>or use your account</span>
			<input type="email"  placeholder="Email" name = "email">
			<input type="password" placeholder="Password" name="password">
			<a href="#">Forgot your password?</a>
			<a>
			<span class="btn" ><input type = "submit" ></span>
		    </a>
		    
		</form>
	</div>
	<div class="overlay-container">
		<div >
			
				<img src ="images/login_student.jpg" height=500 width=400>
				
			
		</div>
		</div>
	 

<footer>
	<p>
		Created with <i class="fa fa-heart"></i> by
		<a target="_blank" href="https://florin-pop.com">Florin Pop</a>
		- Read how I created this and how you can join the challenge
		<a target="_blank" href="https://www.florin-pop.com/blog/2019/03/double-slider-sign-in-up-form/">here</a>.
	</p>
</footer>
<script src="
https://cdn.jsdelivr.net/npm/sweetalert@2.1.2/dist/sweetalert.min.js
"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="failed"){
	swal("Sorry! Wrong Username And Password");
}
if(status=="email"){
	swal("Sorry! Wrong Email");
}
if(status=="password"){
	swal("Sorry! Wrong  Password");
}
</script>
</body>
</html>