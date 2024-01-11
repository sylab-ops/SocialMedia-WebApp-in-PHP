<?php
	ob_start(); //Turn on output buffering
	session_start(); // USED TO STORE THE SESSION VARIABLES WHEN INPUTS FAILS
	$timezone = date_default_timezone_set("Europe/London");
	$con = mysqli_connect("localhost","root", "", "social");//Local Connection variable
	if(mysqli_connect_errno()){
	echo "failed to connect: " . mysqli_connect_errno();
}
?>