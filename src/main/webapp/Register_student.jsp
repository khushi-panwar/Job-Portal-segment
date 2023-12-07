<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
   
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="register.css">
	
<!--  	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script> -->

<script src="
https://cdn.jsdelivr.net/npm/sweetalert@2.1.2/dist/sweetalert.min.js
"></script>
</head>

	<body>
	<input type = "hidden"  id = "status" value = "<%= request.getAttribute("status")%>">
 
    <!-- Navbar-->
<header class="header">
	<nav class="navbar navbar-expand-lg navbar-light py-3">
		<div class="container">
			<!-- Navbar Brand -->
			<a href="#" class="navbar-brand">
				<img src="images/ssism.png" alt="logo">
			</a>
		</div>
	</nav>
</header>

<div class="container">
	<div class="row py-5 mt-4 align-items-center">
		<!-- For Demo Purpose -->
		<div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
			<img src="images/13.jpg" alt="" class="img-fluid mb-3 d-none d-md-block" width="500px" height="200px">
			<h1>Create an Account</h1>
			<p class="font-italic text-muted mb-0">It only take couple of minutes to get started.</p>
			
		</div>

		<!-- Registeration Form -->
		<div class="col-md-7 col-lg-6 ml-auto">
			<form name = "myForm"  onsubmit="return validateForm()" action="StudentData" method = "post" class = "form" enctype='multipart/form-data'>
				<div class="row">

					<!-- First Name -->
					<div class="input-group col-lg-6 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-user text-muted"></i>
							</span>
						</div>
						<input id="firstName" type="text" name="firstname" placeholder="First Name" class="form-control bg-white border-left-0 border-md" required>
					</div>

					<!-- Last Name -->
					<div class="input-group col-lg-6 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-user text-muted"></i>
							</span>
						</div>
						<input id="lastName" type="text" name="lastname" placeholder="Last Name" class="form-control bg-white border-left-0 border-md" required>
					
					</div>

					<!-- Email Address -->
					<div class="input-group col-lg-12 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-envelope text-muted"></i>
							</span>
						</div>
						<input id="email" type="email" name="email" placeholder="Email Address" class="form-control bg-white border-left-0 border-md" required>
					
					</div>

					<!-- Phone Number -->
					<div class="input-group col-lg-12 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-phone-square text-muted"></i>
							</span>
						</div>
						<select id="countryCode" name="countryCode" style="max-width: 80px" class="custom-select form-control bg-white border-left-0 border-md h-100 font-weight-bold text-muted">
							<option value="">+91</option>
							<option value="">+10</option>
							<option value="">+15</option>
							<option value="">+18</option>
						</select>
						<input id="phoneNumber" type="tel" name="phone" placeholder="Phone Number" class="form-control bg-white border-md border-left-0 pl-3" required>
					
			
					</div>.

					<!-- Job -->
					<div class="input-group col-lg-12 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-black-tie text-muted"></i>
							</span>
						</div>
						<input id="job" type  = "text" placeholder = "skill" name="jobtitle" class="form-control custom-select bg-white border-left-0 border-md" required>
						
						
					</div>

					<!-- Password -->
					<div class="input-group col-lg-6 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-lock "></i>
							</span>
						</div>
						<input id="password" type="password" name="password" placeholder="Password" class="form-control bg-white border-left-0 border-md" required>
			
			
					</div>

					<!-- Password Confirmation -->
					<div class="input-group col-lg-6 mb-4">
						<div class="input-group-prepend">
							<span class="input-group-text bg-white px-4 border-md border-right-0">
								<i class="fa fa-lock text-muted"></i>
							</span>
						</div>
						<input id="passwordConfirmation" type="password" name="passwordConfirmation" placeholder="Confirm Password" class="form-control bg-white border-left-0 border-md" required>
					
					</div>
					
			<br><br>
			<div>
			<label>Profile Image:</label>
			<input type="file" placeholder="profile photo" id="profile_pic"  value="profile_pic" name ="photo">
			</div><br><br>
 
					<!-- Submit Button -->
					<span class="form-group col-lg-12 mx-auto mb-0 bbtn">
	<input  type="submit" value="Create your account" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
						
			
					</span>

		
					</div>

					

				</div>
			</form>
		</div>
	</div>
	
</div>

	<script src="register.js"></script>
	<script >
function validateForm() {
 
    var y = document.forms["myForm"]["password"].value;
    var z = document.forms["myForm"]["passwordConfirmation"].value

     if ((z == null || z != y)) {
   	 alert("password must be same");
   	 return false;
	}
  
    
	}
</script>
</body>
</html>