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
$users=[];
$conn = new mysqli($servername, $username, $password, $dbname);
for ($i=0; $i < count($dateRequest); $i++) { 
    $sql = "SELECT id,img FROM user WHERE id=$dateRequest[$i]";
    if ($res=$conn->query($sql)) {
        array_push($users,$res->fetch_assoc());
    }
}
 
echo json_encode($users);
