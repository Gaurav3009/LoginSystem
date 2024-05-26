<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.File" %>  
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style>
		
		.body {
			display: flex;
			flex-direction: column;
			justify-content: space-evenly;
			align-items: center;
			height: 92vh;
			/*background-image: url("/WEB-INF/images/bg.jpg");
			background-size: cover;*/
			background: #CAF4FF;
		}

		.navBar {
			background-color: black;
			backdrop-filter: blur(5px);
		}

		.nav-active{
			font-size: large;
			font-weight: bold;
			color: green;
		}

		.box {
			border-radius: 20px;
			position: relative;
			padding: 50px;
			height: 25rem;
			width: 20rem;
		    /*background: rgba(250, 242, 242, 0.3); */
		    background: #A0DEFF;
            backdrop-filter: blur(1px); 
		}
		
		.form {
			/* background-color: aliceblue; */
			height: 100%;
			width: 100%;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}

		.option {
			display: flex;
			flex-direction: row;
			justify-content: center;
			width: fit-content;
			position: absolute;
			top: 0;
			left: 50%;
			border-radius: 10px;
			transform: translate(-50%, -50%);
			
		}
		.left {
			padding: 10px;
			border-top-left-radius: 10px;
			border-bottom-left-radius: 10px;
			background-color: white;
		}
		.left:hover { 
			cursor: pointer;
			filter: brightness(85%);
		}
		
		.right {
			padding: 10px;
			border-top-right-radius: 10px;
			border-bottom-right-radius: 10px;
			background-color: white;
		}

		.right:hover { 
			cursor: pointer;
			filter: brightness(85%);
		}

		.active {
			background-color: rgb(140, 241, 140);
			transition: background-color 0.5s;
			font-size: large;
			/* transform: scale(110%); */
		}
		
		.invisible {
			display: none;
		}

		.submit {
			margin-top: 2rem;
		}


	</style>
	
    <title>AlienProg</title>
  </head>
  <body>
  
	
	<nav class="navbar navbar-expand-lg navBar navbar-light" style="background-color: #e3f2fd;">
	  <a class="navbar-brand" href="#">AlienProg</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link nav-active" href="#">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">About</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Contact</a>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	<div class="body">
		<div class = "cntainer box">
			<div class="option">
				<div class="left active" id = "left" onClick="opt()">Sign in</div>
				<div class="right" id = "right" onClick="opt()">Register</div>
			</div>
			<div class="form">
				<div class="inner">
					<form action="register" method = "post" class = "invisible" id = "signUp">
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label>
							<input type="email" 
							class="form-control" 
							id="exampleInputEmail1" 
							aria-describedby="emailHelp" 
							placeholder="Enter email"
							name = "email">
							
						 </div>
						 
						 <div class="form-group">
							<label for="userName">User Name</label>
							<input type="text" 
							class="form-control" 
							id="userName" 
							aria-describedby="emailHelp" 
							placeholder="Enter here"
							name = "username">
						 </div>
						 
						 <div class="form-group">
							<label for="userPassword">Password</label>
							<input type="password" 
							class="form-control" 
							id="userPassword" 
							aria-describedby="emailHelp" 
							placeholder="Enter here"
							name = "password">
						 </div>
						 
						 <div class = "container text-center">
							 <button type = "submit" class = "btn btn-success submit">Register</button>
						 </div>
					</form>
					<form action="login" method = "post" id = "signIn">
									 
						 <div class="form-group">
							<label for="userName">User Name</label>
							<input type="text" 
							class="form-control" 
							id="userName" 
							aria-describedby="emailHelp" 
							placeholder="Enter here"
							name = "username">
						 </div>
						 
						 <div class="form-group">
							<label for="userPassword">Password</label>
							<input type="password" 
							class="form-control" 
							id="userPassword" 
							aria-describedby="emailHelp" 
							placeholder="Enter here"
							name = "password">
						 </div>
						 
						 <div class = "container text-center">
							 <button type = "submit" class = "btn btn-success submit">Sign in</button>
						 </div>
					</form>

				</div>
			</div>
		</div>

	</div>

	<script>
		const opt = () => {
			document.getElementById('left').classList.toggle('active');
			document.getElementById('right').classList.toggle('active');
			document.getElementById('signIn').classList.toggle('invisible');
			document.getElementById('signUp').classList.toggle('invisible');
		}



	</script>
	

    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>