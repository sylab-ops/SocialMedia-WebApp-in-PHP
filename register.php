<?php
require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';

?>

<html>
<head>
	<title>Welcome to Boomuprising</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>


			<script>
				// Get the modal
				var modal = document.getElementById('resetPwd');

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
				  if (event.target == modal) {
				    modal.style.display = "none";
				  }
				}
		</script>

</head>
	<body>


		<!-- script to handle the hide/show between the login form and registration form-->
		<?php
			if(isset($_POST['register_button'])) {

				echo '
				<script>
				$(document).ready(function(){
					$("#first").hide();
					$("#second").show();
					});

				</script>
				';
			}
		?>

		<!-- Bootstrap Example single danger button -->
<div class="top_bar">
		<!-- Home page Menu setup with the Blue Icon/name of the website-->
		<div class="logo">
			<a href="index.php"><img src="assets/images/icons/logo.jpg" alt="SportZure" style="height: 60px; width: 80px; border-radius: 10px; margin-bottom: -20px; margin-top: -100px;">SportZure</a>
		</div>


		<div class="wrapper">

            <div class="login_box">
				<div class="login_header"><br><br>
					<!-- <h1>Boomuprising</h1> -->
					Login or sign up below!
				</div>



				<div id="first">					
					<form action="register.php" method="POST">
					<br>
					<label>
						<!-- Used retrieve previously entered values-->
						<i class="icon fa fa-user" id="email"></i>
						<input type="email" name="log_email" placeholder="Email Address"  value="<?php
							if(isset($_SESSION['log_email'])){
								echo $_SESSION['log_email'];
							}  ?>" required><br>
						</label>
						<input type="password" name="log_password" placeholder="Password"><br>
						<?php if(in_array("Email or password was incorrect<br>", $error_array)) echo "Email or password was incorrect<br>"; ?>
						
						
						<input type="submit" name="login_button" value="Login">
						<!--Forgot passowrd-->
						<a href="forget_password.php">Forgot Your Password?</a><br>
						<a href="#" id="signup" class="signup">Need an account? Register here!</a><br>

					</form>

				</div>

                <!-- Porfolio -->
				<!-- <div class="portfolio">
					<h4 style="text-align: center; font-weight: bold; margin-top: -2px; font-size: 40px; font-family: Lato, Helvetica, sans-serif;">My portfolio<img src="https://img.icons8.com/flat_round/64/000000/link.png"></h4>
					<center><a href="portfolio.html" target="_blank" style="font-weight: bold; margin-bottom: 80px; margin-top: -35px; text-align: center;"><img src="https://img.icons8.com/ios/50/000000/portfolio-filled.png"></a></center>
				</div> -->

					<div id="second">
							<form action="register.php" method="POST">
								<!-- Used retrieve previously entered values-->
								<input type="text" name="reg_fname" placeholder="First Name" value="<?php
									if(isset($_SESSION['reg_fname'])){
										echo $_SESSION['reg_fname'];
									}  ?>" required><br>

									<?php if(in_array("Your first name must be between 2 and 25 characters<br>",  $error_array)) echo "Your first name must be between 2 and 25 characters<br>"; ?>

									<!-- Used retrieve previously entered values-->
								<input type="text" name="reg_lname" placeholder="Last Name" value="<?php
									if(isset($_SESSION['reg_lname'])){
										echo $_SESSION['reg_lname'];
									} ?>" required><br>

								<?php if(in_array("Your last name must be between 2 and 25 characters<br>",      $error_array)) echo "Your last name must be between 2 and 25 characters<br>"; ?>

									<!-- Used retrieve previously entered values-->
								<input type="email" name="reg_email" placeholder="Email" 
								value="<?php
									if(isset($_SESSION['reg_email'])){
										echo $_SESSION['reg_email'];
									} ?>"required><br>

									<!-- Used retrieve previously entered values-->
								<input type="email" name="reg_email2" placeholder="Confirm Email" value="<?php
									if(isset($_SESSION['reg_email2'])){
										echo $_SESSION['reg_email2'];
									} ?>" required><br>

								<?php if(in_array("Email already in use<br>", $error_array)) echo "Email already in use<br>"; 
								else if(in_array("Invalid email format<br>", $error_array)) echo "Invalid format<br>"; 
								else if(in_array("Emails don't match<br>", $error_array)) echo "Emails don't match<br>"; ?>

								<input type="password" name="reg_password" placeholder="Password" required><br>
								<input type="password" name="reg_password2" placeholder="Confirm Password" required><br>

								<?php if(in_array("Your passwords do not match<br>", $error_array)) echo "Your passwords do not match<br>"; 
								else if(in_array("Your password can only contain english characters or numbers<br>", $error_array)) echo "Your password can only contain english characters or numbers<br>"; 
								else if(in_array("Your passwords must be between 5 and 30 characters<br>", $error_array)) echo "Your passwords must be between 5 and 30 characters<br>"; ?>

								<input type="submit" name="register_button" value="Register"><br>

								<?php if(in_array("<span style='color: #14C800;'>You're all set! Go ahead and login!</span><br>", $error_array)) echo "<span style='color:#14C800;'>You're all set! Goahead and login!</span><br>"; ?>
									<a href="register.php" id="signin" class="signin">Already have an account? Sign in here!</a><br>

							</form>
					</div>

            </div>
            <h2 style="font-family: 'Bellota-Bold', sans-serif; font-style: oblique; font-size: 30px; text-align: center; color:azure; margin-top: 250px; margin-bottom: -50px;">We bring to your favourite sports and also connect you with people of like-minds at the tip of your finger!
            </h2>
          <center><a href="/Boomuprising-demo-github.com/Portfolio/index.html" target="_blank"><button class="btn-primary " style="margin-bottom: 30px; margin-top: 100px; height: 50px; margin-left: 2px; font-style: inherit; border-radius: 60px;background-color: #1d2124; background-color: #d82c2e; font-family: 'Open Sans', Arial, sans-serif; font-size: 18px; cursor: pointer;">Developer's page</button></center>
            </a>

        </div>

        </body>

         <footer id="Copyright" align="center">
                 <h4>Copyright&nbsp;©2019 by Abraham Sylvester. All rights reserved.</h4>
         </footer>
</html>


