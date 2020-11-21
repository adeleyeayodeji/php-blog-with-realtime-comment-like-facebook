<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");

include '../include/db.php';
//Validating API TOKEN

if (isset($_GET["token"])) {
	$apitoken = $_GET["token"];
	$q = $_GET["q"];

		if ($_GET["token"] == NULL) {
		header('Content-Type: application/json');
		echo json_encode("API TOKEN CAN'T BE EMPTY");
	}else{
			$query = $con->query("SELECT * FROM user WHERE apitoken = '$apitoken'") or die();
	if (mysqli_num_rows($query) == 1) {
		header('Content-Type: application/json');
		$myArray = array();
		if ($result = $con->query("SELECT * FROM post WHERE title LIKE '%{$q}%' order by id desc LIMIT 10")) {

		    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
		            $myArray[] = $row;
		    }
		    echo json_encode($myArray);
		}
			$result->close();
			$con->close();	
		}else{
			header('Content-Type: application/json');
			echo json_encode("Wrong API TOKEN");
		}
	}
}else{
	header('Content-Type: application/json');
	echo json_encode("API TOKEN NEEDED");
}



?>
