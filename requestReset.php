

<!-- PHP MAILER FOR PASSWROD RESET -->
	<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'config/config.php';

if (isset($_POST["email"])) {

	$emailTo = $_POST["email"];
	// Query to generate and insert password Link
	$code = uniqid(true);
	$query = mysqli_query($con, "INSERT INTO resetPasswords(code, email) VALUES ('$code','$emailTo')");
	if(!$query) {
		exit("Error");
	}

// Instantiation and passing `true` enables exceptions
	$mail = new PHPMailer(true);

	try {
	    //Server settings  
	    $mail->isSMTP();                                            // Send using SMTP
	    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
	    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
	    $mail->Username   = 'mrabblessedslyst4christ099@gmail.com';                     // SMTP username
	    $mail->Password   = 'toorroot099!@#$_5991_m@$k';                               // SMTP password
	    $mail->SMTPSecure = 'ssl';        // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
	    $mail->Port       = 465;                                    // TCP port to connect to

	    //Recipients
	    $mail->setFrom('mrabblessedslyst4christ099@gmail.com', 'BoomUprising');
	    $mail->addAddress("$emailTo");     // Add a recipient
	    $mail->addReplyTo('no-reply@boomuprising.com', 'No reply');

	    // Content
	    $url = "http://" . $_SERVER["HTTP_HOST"] . dirname($_SERVER["PHP_SELF"]) . "/resetPassword.php?code=$code";
	    $mail->isHTML(true);                                  // Set email format to HTML
	    $mail->Subject = 'Here is your password reset link!';
	    $mail->Body    = "<h1>You requested to reset your password</h1>
	    					Click <a href='$url'> this link to do so.";
	    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	    $mail->send();
	    echo 'Password reset link has been sent to your email';
	} catch (Exception $e) {
	    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
	} 
}

	?>
		<!-- RESET PASSWORD -->

			<form method="POST">
				    	<input type="text" name="email"  placeholder="Email"><br><br>
				    	<input type="submit" name="submit" value="Send Password Reset Link">

				    	<!-- Return to Register page -->
				<div class="goBack">
					<center><a href="register.php" target="_top" style="font-weight: bold; margin-bottom: 80px; margin-top: -35px; text-align: center;"><h4 style="text-align: center; font-weight: bold; margin-top: -2px; font-size: 40px; font-family: Lato, Helvetica, sans-serif;">Click to return to home page</h4></a></center>
				</div>
			</form>










