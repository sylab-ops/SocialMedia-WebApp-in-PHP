

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
	    $mail->Username   = '$email';                     // SMTP username
	    $mail->Password   = '';                               // SMTP password
	    $mail->SMTPSecure = 'ssl';        // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
	    $mail->Port       = 465;                                    // TCP port to connect to

	    //Recipients
	    $mail->setFrom('$email', 'BoomUprising');
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

    <form action="forget_password.php" method="POST">
        <center><h4 style="width: 200px; margin-top: 25px; font-family: 'Bellota-BoldItalic', sans-serif; font-size: 20px;">Forget Password</h4><hr></center>
        <input type="text" name="email"  placeholder="Enter your email" style="width: 500px; height: 35px; text-align: center; border-radius: 5px;  border-inline: none; margin-bottom: 5px; margin-left: 500px;"><br>
        <input name class="btn btn-primary" type="submit" value="Submit" style="width: 500px; height: 35px; background-color: #2C6C96;  border-radius: 5px; font-family: 'Bellota-BoldItalic', sans-serif; margin-left: 500px;">
        <br><br>
        <!-- Return to Register page -->
        <div class="goToHomePage">
            <center><a href="register.php" target="_top" style="font-weight: bold; margin-bottom: 80px; margin-top: -35px; text-align: center;"><img src="https://img.icons8.com/color/48/000000/return.png"/><h4>Return to home page</h4></a></center>
        </div>

        <footer id="Copyright" align="center" style="margin-top: 200px;">
            <h4>Copyright&nbsp;©2019 by Abraham Sylvester. All rights reserved.</h4>
        </footer>
    </form>














