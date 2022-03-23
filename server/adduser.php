<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$postdata = file_get_contents("php://input");
$dateRequest = json_decode($postdata);

if (!filter_var($dateRequest->email, FILTER_VALIDATE_EMAIL)) {
  echo json_encode('noValid');
  die();
}
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";


$conn = new mysqli($servername, $username, $password, $dbname);
$user=false;
$sql = "SELECT * FROM user";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
       if ($row['email']==$dateRequest->email) {
            $user=true;
       }
    }
}


if ($user) {
  echo json_encode('0');
  die();
}



$conn = new mysqli($servername, $username, $password, $dbname);
$user=false;
$sql = "INSERT INTO user (username, email, password)VALUES ('$dateRequest->username', '$dateRequest->email', '$dateRequest->password')";
$result = $conn->query($sql);
echo json_encode('1');
$conn->close();
