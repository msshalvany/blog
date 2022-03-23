<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$id=$_GET["id"];
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM blogs WHERE id=$id";
$result = $conn->query($sql);
echo json_encode($result->fetch_array());