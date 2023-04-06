<?php
$servename = "localhost";
$username = "id19728656_dailyline";
$password = "Aa-123456789";
$dbname = "id19728656_linedb" ;

$conn = mysqli_connect($servename,$username,$password,$dbname);
if(!$conn){
    die("false:".mysqli_connect_error());
}

?>