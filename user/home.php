<?php
include '../include/header.php';
if (!isset($_SESSION["user"])) {
	header("location: index.php");
}
//Getting current token from base:
	$uniqueid = $_SESSION["uniqueid"];
	$query = mysqli_query($con, "SELECT apitoken FROM user WHERE id = '$uniqueid' ") or die();
	$result = mysqli_fetch_assoc($query);
?>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.js"></script>
<style type="text/css">
	.dashboard{
		padding: 10px;

	}
</style>
<div class="dashboard">
	<h2 style="text-align: center;">Welcome <?php echo $_SESSION["user"]; ?></h2>
	<div class="panel">
		<p>To use biggidroid post api, kindly generate your api token</p>
		<button id="generate">Generate token</button>  <a id="result" style="background: black;color: white;padding: 5px;font-family: calibri;border-radius: 5px;" href="http://localhost/biggidroid/api/?token=<?php echo($result['apitoken']) ?>" target="_blank">http://localhost/biggidroid/api/?token=<span style="color: lightgreen;" id="style"><?php echo($result['apitoken']) ?></span></a>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function () {
	 	//Starting ajax url
	 	$("#generate").click(function () {
	 		// alert("Am working");
	 	   $.get("user/generate.php", function(data, status){
		    // alert("Data: " + data + "\nStatus: " + status);
		    $("#generate").notify("Token Generated", "success");
		    console.log(data);
		    $("#result").attr("href","http://localhost/biggidroid/api/?token="+data);
		    $("#style").html(data);
		  });
	 	})
	 	// console.log("Am working");
		
	})
</script>
<?php
include '../include/footer.php';
?>