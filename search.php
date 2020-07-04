<?php 

	include("includes/header.php");

	if(isset($_GET['q']))  {
		$query = $_GET['q'];
	}
		else {
			$query  = "";
		}

		if(isset($_GET['type'])) {
			$type = $_GET['type'];
		} 
		else{
			$type = "name";
		}

 ?>

<div class="main_column column" id="main_column">
	 	<?php 
	 		if($query =="")
	 			echo "You must enter something in the search box.";
	 		else {

				// if query contains an underscore, assumes user is searching for usernames 
			if($type == "username") 
				$userReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE username LIKE '$query%' AND user_closed='no' LIMIT 8");

			else {

				$names = explode(" ", $query); // Explode, operates by splitting the elements of an array

				//if  there are two words, assumes they are  first and last names respectively
				 if(count($names) == 3) 
				$userReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '$names[0]%' AND last_name LIKE '$names[2]%') AND user_closed='no'");

				//if query has one name only, search firstname or last names 
				else if(count($names) == 2) 

					$userReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '$names[0]%' AND last_name LIKE '$names[1]%') AND user_closed='no'");
				else

					$userReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '$names[0]%' OR last_name LIKE '$names[0]%') AND user_closed='no'");
				
				}

				//Check if results were found 
				if(mysqli_num_rows($userReturnedQuery) == 0)

					echo "We can't find anyone with a " . $type . " like: " .$query;

				else
					echo mysqli_num_rows($userReturnedQuery) . " results found: <br> <br>";
				echo "<br>";
				echo "<br>";
				echo "<p id='grey'>Try searching for:</p><br>";
				echo "<a href='search.php?q=". $query ."&type=name'>Names</a> or <a href='search.php?q=". $query ."&type=username'>Usernames</a><hr id='search_hr>";

				//While loop to fetch number of usernames or  Names found
				while($row = mysqli_fetch_array($userReturnedQuery)) {

					$user_obj = new User($con, $user['username']);

					$button ="";
					$mutual_friends ="";

					if($user['username'] != $row['username']) {

						//Generate button depending  friendship status
						if($user_obj->isFriend($row['username']))

							$button ="<input  type='submit' name='" . $row['username'] . "' class='danger'  value='Remove Friend'>";

						else if($user_obj->didReceiveRequest($row['username']))
							$button ="<input  type='submit' name='" . $row['username'] . "' class='warning'  value='Respond to request'>";

						else if($user_obj->didSendRequest($row['username']))
							$button ="<input  type='submit' name='" . $row['username'] . "' class='default'  value='Request sent'>";
						else
							$button ="<input  type='submit' name='" . $row['username'] . "' class='success'  value='Add friend'>";

						$mutual_friends = $user_obj->getMutualFriends($row['username']) . " friend(s) in common";


						//Button forms
						if(isset($_POST[$row['username']])) {
							if($user_obj->isFriend($row['username'])) {
								$user_obj->removeFriend($row['username']);
								header("Location: http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"); //Helps to refresh the server once the event is triggered
							}
							else if($user_obj->didReceiveRequest($row['username'])) {
								header("Location: requests.php");
							}
							else if($user_obj->didSendRequest($row['username'])) {
								
							}
							else {
								$user_obj->sendRequest($row['username']);
								//echo "Request successfully sent";
								header("Location: http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]");//Helps to refresh the server once the event is triggered
							}
						}


					}

				//Search Friends page
				echo "<div class='search_result'>	
						<div class='searchPageFriendButtons'>

						 <form action='' method='POST'> 
						  " . $button . "
						 </form>
						</div>

						<div class='result_profile_pic'>
							<a href='" . $row['username'] ."'><img src='" . $row['profile_pic'] ."' style='height: 100px;'></a>
						</div>

						<a href='" . $row['username'] . "'> " . $row['first_name'] . " " . $row['last_name'] . "
						<p id='grey'> " . $row['username'] ."</p>	
						</a>
						<br>
						" . $mutual_friends ."<br><br>
						<hr>
					</div>";
			} //End of while 

	 	}

	 ?>
	 	

 </div>