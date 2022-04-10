<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$postdata = file_get_contents("php://input");
$dateRequest = json_decode($postdata);
$userinfo = $_POST["user"];
$userinfo=json_decode($userinfo);
$_FILES['file']['name']=rand(1,999999).$_FILES['file']['name'];
move_uploaded_file($_FILES["file"]['tmp_name'],'img/'.$_FILES['file']['name']);
if (!filter_var($userinfo->email, FILTER_VALIDATE_EMAIL)) {
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
       if ($row['email']==$userinfo->email) {
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
$img=$_FILES['file']['name'];
$sql = "INSERT INTO user (username, email, password,img,liked )VALUES ('$userinfo->username', '$userinfo->email', '$userinfo->password','$img','')";
$result = $conn->query($sql);
echo json_encode('1');
$conn->close();
