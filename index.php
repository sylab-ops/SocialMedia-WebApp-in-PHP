<?php 
	include("includes/header.php");

		if(isset($_POST['post'])){

//************************To update image on NewsFeed****************
		$uploadOk = 1;
		$imageName = $_FILES['fileToUpload']['name'];
		$errorMessage = "";

		if($imageName != "") {
			$targetDir = "assets/images/posts/";
			$imageName = $targetDir . uniqid() . basename($imageName); // Identifier to differentiate betweeen all files uploaded from various users, even the names correspond with another user's file
			$imageFileType = pathinfo($imageName, PATHINFO_EXTENSION);

			if($_FILES['fileToUpload']['size'] > 10000000) {
				$errorMessage = "Sorry, your file is too large";
				$uploadOk = 0;
			}

			if(strtolower($imageFileType) != "jpeg" && strtolower($imageFileType) !="png" && strtolower($imageFileType) !="jpg" && strtolower($imageFileType) !="gif") {
				$errorMessage = "Sorry, only jpeg, png, jpg and gif files are allowed";
				$uploadOk = 0;
			}

			if($uploadOk) {
				if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $imageName)) {
					//Image uploaded Okay
				}
				else {
					//Image did not upload
					$uploadOk = 0;
				}
			}
		}


		if($uploadOk){

		$post = new Post($con, $userLoggedIn);
		$post->submitPost($_POST['post_text'], 'none', $imageName);
		}
		else {
			echo "<div style='text-align: center;' class='alert alert-error'>
					$errorMessage
			   </div>";
		}

	}
?>

 <!--On click, Links to the user profile-->
	<div class="user_details column">
		<a href="<?php echo $userLoggedIn; ?>">  <img src="<?php echo $user['profile_pic']; ?>"> </a>

		<div class="user_details_left_right">
			<a href="<?php echo $userLoggedIn; ?>">
			<?php 
			echo $user['first_name'] . " " . $user['last_name']; // Returns user firstName and LastName on the profile

			 ?>
			</a>
			<br>
			<?php echo "Posts: " . $user['num_posts']. "<br>"; 
			echo "Likes: " . $user['num_likes']; ?>
		</div>

	</div>

	<!-- Post container white layer-->
	<div class="main_column column">
		<form class="post_form" action="index.php" method="POST" enctype="multipart/form-data">
			<input type="file" name="fileToUpload" id="fileToUpload">
			<textarea name="post_text" id="post_text" placeholder=" What's on your mind?"></textarea>
			<input type="submit" name="post" id="post_button" value="Post">
			<hr>

		</form>

		<div class="posts_area"></div>
		<img id="#loading" src="assets/images/icons/loading.gif" style="display: none;">
	</div>


	<div class="user_details column">
		<h5>Popular trending words</h5>

		<div class="trends">
<?php 

	$query = mysqli_query($con, "SELECT * FROM trends ORDER BY  hits  DESC LIMIT 9");

	foreach ($query as $row) {
		$word = $row['title'];
		$word_dot = strlen($word) >= 14 ? "..." : "";

		$trimmed_word = str_split($word, 14);
		$trimmed_word = $trimmed_word[0];

		echo "<div style='padding: 1px'>";
		echo $trimmed_word . $word_dot;
		echo "<br></div>";
	}
 ?>
	</div>

	</div>

    <!--Explore container-->
    <div class="user_details column">
        <h5>Explore</h5>
        <div class="explore">
            <a href=""><img src="https://img.icons8.com/cute-clipart/64/000000/shop.png" style="height: 20px;"/><span style="margin-bottom: 40px;">Market</span>
            </a><br><br>
            <a href=""><img src="https://img.icons8.com/color/48/000000/group.png" style="height: 25px;" "/><span>Group</span
            </a><br><br>
            <a href=""><img src="https://img.icons8.com/color/48/000000/tear-off-calendar.png" style="height: 25px;"/><span>Events</span></a><br><br>
            <a href=""><img src="https://img.icons8.com/officel/16/000000/filled-flag.png" style="height: 25px;"/><span>Pages</span></a>
        </div>

	<script>
			var userLoggedIn = '<?php echo $userLoggedIn; ?>';
			$(document).ready(function() {
				$('#loading').show();

				//Original ajax request for loading first posts 
				$.ajax({
					url: "includes/handlers/ajax_load_posts.php",
					type: "POST",
					data: "page=1&userLoggedIn=" + userLoggedIn,
					cache:false,

					success: function(data) {
						$('#loading').hide();
						$('.posts_area').html(data);
					}
				});

				$(window).scroll(function() {
					var height = $('.posts_area').height(); //Div containing posts
					var scroll_top = $(this).scrollTop();
					var page = $('.posts_area').find('.nextPage').val();
					var noMorePosts = $('.posts_area').find('.noMorePosts').val();

					if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
						$('#loading').show();
						
						//alert("Hello");
						var ajaxReq = $.ajax({
							url: "includes/handlers/ajax_load_posts.php",
							type: "POST",
							data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
							cache:false,

							success: function(response) {
								$('.posts_area').find('.nextPage').remove(); //Removes current .nextpage 
								$('.posts_area').find('.noMorePosts').remove(); //Removes current .nextpage 

								$('#loading').hide();
								$('.posts_area').append(response);
							}
						});

					} //End if 

					return false;

				}); //End (window).scroll(function())
			});
	</script>
	</div> <!--wrapper class close tag from header form-->
</body>

</html>