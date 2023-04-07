<?php
// header("Access-Control-Allow-Origin: *");
// $servername = "localhost";
// $username = "owner";
// $password = "123456";
// $dbname = "testdb";


require_once("dbtools.php");
// $conn = mysqli_connect($servername, $username, $password, $dbname);
$link = create_connect();
// if(!$conn){
//     die("連線失敗".mysqli_connect_error());
// }
$sql = "SELECT ID, Sort_ID, Pname, Pdimg, Information, Price, DisPrice, Points FROM product ORDER BY ID DESC";
$result = execute_sql($link, "myShop", $sql);
if (mysqli_num_rows($result) > 0) {
    $mydata = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $mydata[] = $row;
    }
    echo '{"state": true, "message":"讀取資料成功!", "data":' . json_encode($mydata) . '}';
    mysqli_close($link);
} else {
    echo '{"state": false, "message":"讀取資料失敗或查無資料!"}';
}
