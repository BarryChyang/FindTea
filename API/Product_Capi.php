<?php
require_once("dbtools.php");
$data = file_get_contents("php://input", "r");
$mydata = array();
$mydata = json_decode($data, true);

if (isset($mydata["Sort_ID"]) &&  isset($mydata["Pname"]) && isset($mydata["Pdimg"]) && isset($mydata["Information"]) && isset($mydata["Price"]) &&  isset($mydata["DisPrice"]) &&  isset($mydata["Points"]) ) {
    if ($mydata["Sort_ID"] != "" && $mydata["Pname"] != "" && $mydata["Pdimg"] != "" && $mydata["Information"] != "" && $mydata["Price"] != "" && $mydata["DisPrice"] != "" && $mydata["Points"] != "" ) {
        $p_Sort_ID = $mydata["Sort_ID"];
        $p_Pname = $mydata["Pname"];
        $p_Pdimg = $mydata["Pdimg"];
        $p_Information = $mydata["Information"];
        $p_Price = $mydata["Price"];
        $p_DisPrice = $mydata["DisPrice"];
        $p_Points = $mydata["Points"];
        // $servername = "localhost";
        // $username = "owner";
        // $password = "123456";
        // $dbname = "testdb";

        // $conn = mysqli_connect($servername, $username, $password, $dbname);
        // if(!$conn){
        //     die("連線失敗".mysqli_connect_error());
        // }

        $link = create_connect();

        $sql = "INSERT INTO product(Sort_ID, Pname, Pdimg, Information, Price, DisPrice, Points) VALUES('$p_Sort_ID', '$p_Pname', '$p_Pdimg','$p_Information','$p_Price','$p_DisPrice','$p_Points')";

        $result = execute_sql($link, "myShop", $sql);

        if ($result) {
            echo '{"state":true,"message":"新增資料成功 !!"}';
        } else {
            echo '{"state": false, "message":"新增資料失敗 !!"'.mysqli_error($link).'}';
        }
        mysqli_close($link);
    } else {
        echo '{"state": false, "message":"欄位傳遞空值!"}';
    }
} else {
    echo '{"state": false, "message":"欄位傳遞資料失敗!"}';
}
