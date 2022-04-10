<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$postdata = file_get_contents("php://input");
if(!$postdata){
    die();
}
$dateRequest = json_decode($postdata);
$dateRequest->descrption =  substr($dateRequest->text,0,80);
$dateRequest->descrption =$dateRequest->descrption."....."; 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "INSERT INTO blogs (head, text, userid,discription,liks,comment )VALUES ('$dateRequest->head', '$dateRequest->text', '$dateRequest->userid','$dateRequest->descrption','0','0')";
$result = $conn->query($sql);
echo json_encode('1');
$conn->close();
