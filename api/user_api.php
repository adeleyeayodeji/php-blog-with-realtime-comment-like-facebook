<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");

include '../include/db.php';
header('Content-Type: application/json');
//Getting data from api POST
if (isset($_GET["signup"])) {
	//data
	$username = $_GET["username"];
	$first = $_GET["first"];
	$last = $_GET["last"];
	$password = md5($_GET["password"]);

	//Check if user exits
	$query = $con->query("SELECT * FROM user WHERE username = '$username' AND password = '$password' ") or die();
	if (!$row = mysqli_fetch_assoc($query)) {
		//insert user to base
		$sql = "INSERT INTO user(first, last, username, password) VALUES('$first', '$last', '$username', '$password')";
		$query = $con->query($sql);
		if ($query) {
			echo json_encode(array('response' => 'ok', 'username' => $username, 'first' => $first, 'last' => $last));
		}
	}else{
		echo json_encode(array('response' => 'exist', 'username' => $username));
	}

}

//For login
if (isset($_GET["login"])) {
	$username = $_GET["username"];
	$password = md5($_GET["password"]);
	
	$query = $con->query("SELECT * FROM user WHERE username = '$username' AND password = '$password' ") or die();
	if (!$row = mysqli_fetch_assoc($query)) {
		echo json_encode(array('response' => 'failed'));
	}else{
		echo json_encode(array('response' => 'ok', 'name' => $row['username']));
	}
}

if (isset($_GET["user_details"])) {
	$username = $_GET['username'];
	//sql
	$sql = "SELECT * FROM user WHERE username = '$username'";
	$query = $con->query($sql);
	if ($row = mysqli_fetch_assoc($query)) {
		echo json_encode(array('info' => 'User found', "response" => $row));
	}else{
		echo json_encode(array('info' => "User notfound"));
	}
}


?>
