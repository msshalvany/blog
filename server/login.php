<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$postdata = file_get_contents("php://input");
$dateRequest = json_decode($postdata);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$dateUser;
$conn = new mysqli($servername, $username, $password, $dbname);
$user=false;
$sql = "SELECT * FROM user";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
       if ($row['username']==$dateRequest->username && $row['password']==$dateRequest->password) {
            $user=true;
            $dateUser =$row;
       }
    }
}

if ($user) {
  $dateUser[]='1';
  echo json_encode($dateUser);
}else{
  echo json_encode('0');
}
$conn->close();
