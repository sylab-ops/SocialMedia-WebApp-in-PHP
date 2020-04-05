<?php
	require 'config/config.php';
	include("includes/classes/User.php");
	include("includes/classes/Post.php");
	include("includes/classes/Message.php");
	include("includes/classes/Notification.php");
	

	if (isset($_SESSION['username'])){
		$userLoggedIn = $_SESSION['username'];
		//Return the user details on the top_bar
		$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username = '$userLoggedIn'");
		 $user = mysqli_fetch_array($user_details_query); //Array of user_details
	}
	else {
		header("Location: register.php");
	}
?>

<html>
<head>
	<title>Welcome to UpRising</title>

	<!--Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/demo.js"></script>
	<script src="assets/js/jquery.jcrop.js"></script>
	<script src="assets/js/jcrop_bits.js"></script>


	<!--CSS -->
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="assets/css/jquery.jcrop.css">

</head>
<body>

<!-- Bootstrap Example single danger button -->
<div class="top_bar">
		<!-- Home page Menu setup with the Blue Icon/name of the website-->
		<div class="logo">
			<a href="index.php">SportZure</a>
<!--            assets/images/icons/logo.jpg-->

        </div>


			<!-- Search box -->
			<div class="search">

				<form action="search.php" method="GET" name="search_form">
					<input type="text" onkeypress="getLiveSearchUsers(this.value, '<?php echo $userLoggedIn; ?>')" name="q" placeholder=" Search..." autocomplete="off" id="search_text_input">

					<div class="button_holder">
						<img src="assets/images/icons/magnifying_glass_icon.png">

					</div>

				</form>

				<!--Search result-->
				<div class="search_results">
				</div>


				<div class="search_results_footer_empty">
				</div>
				

			</div>



		<nav>

			<?php 
				// Unread messages
				$messages = new Message($con, $userLoggedIn);
				$num_messages = $messages->getUnreadNumber();

				// Unread notifications
				$notifications = new Notification($con, $userLoggedIn);
				$num_notifications = $notifications->getUnreadNumber();

				// Friend requests notifications
				$user_obj = new User($con, $userLoggedIn);
				$num_requests = $user_obj->getNumberOfFriendRequests();
			 ?>

		<!-- Returns users first name-->
			<a href="<?php echo $user['first_name']; ?>">
			</a>

			<a href="index.php"><i class="fa fa-home fa-lg"></i>
			</a>
			
			<a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'message')">
				<i class="fa fa-envelope fa-lg"></i>
				<?php 
				if($num_messages > 0)
				echo '<span class="notification_badge" id="unread_message">' . $num_messages . '</span>';

				 ?>
			</a>

			<a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'notification')">
				<i class="fa fa-bell-o fa-lg"></i>
				<?php 

				if($num_notifications > 0)
				echo '<span class="notification_badge" id="unread_notification">' . $num_notifications . '</span>';

				 ?>
			</a>
			<a href="requests.php">
				<i class="fa fa-users fa-lg"></i>
				<?php 
				if($num_requests > 0)
				echo '<span class="notification_badge" id="unread_requests">' . $num_requests . '</span>';
				 ?>
			</a>
			<a href="settings.php">
				<i class="fa fa-cog fa-lg"></i>
			</a>
			<a href="includes/handlers/logout.php">
				<i class="fa fa-sign-out fa-lg"></i>
			</a>
				
		</nav>

		<!--Notification dropdown window-->
		<div class="dropdown_data_window" style="height:0px; border: none;"> </div>
		<input type="hidden" id="dropdown_data_type" value="">
			
</div>

	<script>
	var userLoggedIn = '<?php echo $userLoggedIn; ?>';
	$(document).ready(function() {

		//messages icon dropdown window scrolliing
		$(dropdown_data_window).scroll(function() {
			var inner_height = $('.dropdown_data_window').innerheight(); //Div containing posts
			var scroll_top = $('.dropdown_data_window').scrollTop();
			var page = $('.dropdown_data_window').find('.nextPageDropdownData').val();
			var noMoreData = $('.dropdown_data_window').find('.noMoreDropdownData').val();

			if ((scroll_top + inner_height >=$('.dropdown_data_window') [0].scrollHeight) && noMoreData == 'false') {
				
			
					var pageName; //Hold name of page  to send  ajax request to 
					var type = $('.dropdown_data_type').val();

					if(type == 'notification')
						pageName = "ajax_load_notifications.php";
					else if (type ='message')
						pageName = "ajax_load_messages.php"; 


					var ajaxReq = $.ajax({
					url: "includes/handlers/" + pageName,
					type: "POST",
					data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
					cache:false,

					success: function(response) {
						$('.dropdown_data_window').find('.nextPageDropdownData').remove(); //Removes current .nextpage 
						$('.dropdown_data_window').find('.noMoreDropdownData').remove(); //Removes current .nextpage 

						$('.dropdown_data_window').append(response);
					}
				});

			} //End if 

			return false;

		}); //End (window).scroll(function())
	});

	</script>

<div class="wrapper">

	

