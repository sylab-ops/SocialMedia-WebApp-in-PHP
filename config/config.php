<?php
	ob_start(); //Turn on output buffering
	session_start(); // USED TO STOR THE SESSION VARIABLES WHEN INOUTS FAILS
	$timezone = date_default_timezone_set("Europe/London");
	$con = mysqli_connect("localhost","root", "", "social");//Local Connection variable
	// $con = mysqli_connect("localhost","sylabrah_boom_me", "@Admin", "social");// Server Connection variable
	if(mysqli_connect_errno()){
	echo "failed to connect: " . mysqli_connect_errno();
}
?>