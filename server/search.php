<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$like=$_GET['like'];
$page=$_GET['page'];
$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT * FROM blogs WHERE head LIKE '%$like%'";
$result = $conn->query($sql);
$date = [];
$countpage=0;
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $date[] = $row;
        $countpage++;
    }
    $date=array_slice($date,($page*4)-4,4);
    array_push($date, ceil($countpage/4));
    echo json_encode($date);
  }
   else {
    echo json_encode('0');
  }
  $conn->close();