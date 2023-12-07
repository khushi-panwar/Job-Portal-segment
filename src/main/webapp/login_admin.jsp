<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<!--	<h1>Create Account</h1>
			<div class="social-container">
				<a href="#" class="social">
				<i class="glyphicon glyphicon-cloud"></i>
				</a>
				<a href="#" class="social">
				<img src="https://img.icons8.com/officel/160/null/google-logo.png">
				</a>
				<a href="#" class="social">
				<img src="https://img.icons8.com/stickers/200/null/github.png">
				</a>
			</div>-->
		<!--  	<span>or use your email for registration</span>
			<input type="text" placeholder="Name" />
			<input type="email" placeholder="Email" />
			<input type="password" placeholder="Password" />
			<button>Sign Up</button>-->
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action = "chatgpt" method = "get">
			<h1>Sign in</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your account</span>
			<input type="email"  placeholder="Email" name = "email">
			<input type="password" placeholder="Password" name ="password">
			<a href="#">Forgot your password?</a>
			<a>
			<span class="btn" ><input type = "submit" value  = login></span>
		    </a>
		    
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				
				<button class="ghost">Sign In</button>
				
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost">Sign Up</button>
			</div>
		</div>
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
</body>
</html>