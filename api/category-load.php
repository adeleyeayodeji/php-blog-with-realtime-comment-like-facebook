<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");
// connect to database
include '../include/db.php';

if (isset($_GET['category'])) {
    $category = $_GET['category'];
}else{
  $category = 'Programming';
}

// define how many results you want per page
$results_per_page = 10;

// find out the number of results stored in database
$sql1='SELECT * FROM post';
$result1 = $con->query($sql1);
$number_of_results = mysqli_num_rows($result1);

// determine number of total pages available
$number_of_pages = ceil($number_of_results/$results_per_page);

// determine which page number visitor is currently on
if (!isset($_GET['page'])) {
$page = 1;
} else {
$page = $_GET['page'];
}

// determine the sql LIMIT starting number for the results on the displaying page
$this_page_first_result = ($page-1)*$results_per_page;

// retrieve selected results from database and display them on page
$sql='SELECT * FROM post WHERE category = "'.$category.'" order by id desc LIMIT ' . $this_page_first_result . ',' .  $results_per_page;
$result = $con->query($sql);

?>


<?php
//Validating API TOKEN

if (isset($_GET["token"])) {
$apitoken = $_GET["token"];

  if ($_GET["token"] == NULL) {
  header('Content-Type: application/json');
  echo json_encode("API TOKEN CAN'T BE EMPTY");
}else{
    $query = $con->query("SELECT * FROM user WHERE apitoken = '$apitoken'") or die();
if (mysqli_num_rows($query) == 1) {
  header('Content-Type: application/json');
  $myArray = array();
      while($row = $result->fetch_array(MYSQLI_ASSOC)) {
              $myArray[] = $row;
      }
      echo json_encode($myArray);

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
