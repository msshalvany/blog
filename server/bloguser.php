<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$postdata = file_get_contents("php://input");
$dateRequest = json_decode($postdata);
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM blogs WHERE userid=$dateRequest";
$result = $conn->query($sql);
$date = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $date[] = $row;
    }
    $date = json_encode($date);
    echo $date;
  }
   else {
    echo "0";
  }
  $conn->close();