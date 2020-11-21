<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");
header("Content-Type: application/json");

include '../include/db.php';
//Validating API TOKEN
 		if (isset($_POST['name'])) {
 			
					$name = $_POST['name'];
					$postid = $_POST['postid'];
					$message = $_POST['message'];
					$jstime = $_POST['jstime'];

					if ($name == "null") {
						echo json_encode(array('info' => "invalid", 'details' => $name, 'postid' => $postid, 'message' => $message));
					}else if ($message == "null") {
							echo json_encode(array('info' => "invalid", 'details' => $name, 'postid' => $postid, 'message' => $message));
					}else{
						$query = mysqli_query($con, "INSERT INTO comment(name, message, postid, jstime) VALUES('$name', '$message', '$postid', '$jstime') ") or die();
						if ($query) {
							echo json_encode(array('info' => "valid", 'details' => $name, 'postid' => $postid, 'message' => $message));
						}else{
							echo json_encode(array('info' => "invalid"));
						}
					}
				}



?>
