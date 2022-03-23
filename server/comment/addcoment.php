<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$postdata = file_get_contents("php://input");
$postdata = json_decode($postdata);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($postdata->coment) {
    $sql = "INSERT INTO coment_blog (coment,userid,blogid) VALUES ('$postdata->coment', '$postdata->userid', '$postdata->blogid')";
    $conn->query($sql);
}
$sql="SELECT comment FROM blogs WHERE id=$postdata->blogid";
$re= $conn->query($sql);
$re=$re->fetch_assoc();
$nwe=$re['comment']+1;
$sql="UPDATE blogs SET comment='$nwe' WHERE id=$postdata->blogid";
$conn->query($sql);

