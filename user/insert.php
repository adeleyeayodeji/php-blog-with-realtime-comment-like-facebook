<?php
	include '../include/db.php';
	$first = $_POST['first'];
	$last = $_POST['last'];
	$username = $_POST['username'];
	$password = md5($_POST['password']);

	$check = mysqli_query($con, "SELECT * FROM user WHERE username = '$username' AND password = '$password'") or die();
	if (mysqli_num_rows($check) == 1) {
		?>
		<script type="text/javascript">
			alert("User already register");
			window.location.href="index.php";
		</script>
		<?php
	}else{
			$query = mysqli_query($con, "INSERT INTO username(first, last, username, password) VALUES('$first', '$last', '$username', '$password') ") or die();
			if ($query) {
				header("location: index.php");
			}
			else{
				echo "error";
			}		
	}


?>