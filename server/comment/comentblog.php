<?php
header('Access-Control-Allow-Origin:  http://localhost:4200');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Authorization, Origin');
header('Access-Control-Allow-Methods:  POST, PUT');
$id=$_GET['id'];
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";
$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT * FROM coment_blog WHERE blogid=$id";
$result = $conn->query($sql);
$date = [];
if ($result->num_rows > 0) {
    $index=0;
    while($row = $result->fetch_assoc()) {

        $id=$row['userid'];
        $sql = "SELECT username FROM user WHERE id=$id";
        $res = $conn->query($sql);
        $date[$index]= $row;
        $date[$index][]=$res->fetch_all();
        $index++;
    }
    echo json_encode($date);
}
  else {
    echo "0 results";
}
$conn->close();
