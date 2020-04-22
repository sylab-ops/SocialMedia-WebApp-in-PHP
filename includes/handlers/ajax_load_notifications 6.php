<?php  
	include("../../config/config.php");
	include("../classes/User.php");
	include("../classes/Notification.php");

	$limit = 8; // Number of messages to load 
	$notification = new Notification($con, $_REQUEST['userLoggedIn']);

	echo $notification->getNotifications($_REQUEST, $limit);

?>

