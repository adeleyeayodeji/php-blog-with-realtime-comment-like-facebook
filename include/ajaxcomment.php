<?php
	include 'db.php';

			   if (isset($_POST['submit'])) {
						
					$name = $_POST['name'];
					$postid = $_POST['postid'];
					$message = $_POST['message'];
					
					$query = mysqli_query($con, "INSERT INTO comment(name, message, postid) VALUES('$name', '$message', '$postid') ") or die();
					if ($query) {
						echo "Comment added successfully";
					}else{
						echo "Failed to save comment";
					}	
				}
					
?>