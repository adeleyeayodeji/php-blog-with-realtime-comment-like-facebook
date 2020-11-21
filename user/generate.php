<?php
include '../include/db.php';
session_start();
if (isset($_SESSION["user"])) {
	//Generating api token
	$userid = $_SESSION["uniqueid"];
	$newtoken = md5(time());
	//echo $newtoken;
	$generate = mysqli_query($con, "UPDATE user SET apitoken = '$newtoken' WHERE id = '$userid' ") or die();
	if ($generate) {
		echo $newtoken;
	}
}else{
	header("location: index.php");
}
?>