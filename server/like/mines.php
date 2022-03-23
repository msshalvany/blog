<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$id = $_GET['id'];
$userid = $_GET['userid'];
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$dateUser;
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT liks FROM blogs WHERE id=$id";
$result = $conn->query($sql);
$row = $result->fetch_array();
if ($row['liks']!=0) {
    $end = $row['liks']-1;
}
$sql = "UPDATE blogs SET liks=$end  WHERE id=$id";
$conn->query($sql);

////////////////////
$sql = "SELECT liked FROM user WHERE id=$userid";
$row=$conn->query($sql);
$re=$row->fetch_array()[0];
$re=explode(',',$re);
$key = array_search($id, $re);
if (false !== $key) {
    unset($re[$key]);
}
$new = implode(',',$re);
$sql="UPDATE user SET liked='$new'  WHERE id=$userid";
$conn->query($sql);