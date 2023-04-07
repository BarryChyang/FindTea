<?php
require_once("dbtools.php");
$data = file_get_contents("php://input", "r");
$mydata = array();
$mydata = json_decode("$data ", true);
if (isset($mydata["Sort_ID"]) &&  isset($mydata["Pname"]) && isset($mydata["Pdimg"]) && isset($mydata["Information"]) && isset($mydata["Price"]) &&  isset($mydata["DisPrice"]) &&  isset($mydata["Points"]) ) {
    if ($mydata["Sort_ID"] != "" && $mydata["Pname"] != "" && $mydata["Pdimg"] != "" && $mydata["Information"] != "" && $mydata["Price"] != "" && $mydata["DisPrice"] != "" && $mydata["Points"] != "" ) {
        $p_Sort_ID = $mydata["Sort_ID"];
        $p_Pname = $mydata["Pname"];
        $p_Pdimg = $mydata["Pdimg"];
        $p_Information = $mydata["Information"];
        $p_Price = $mydata["Price"];
        $p_DisPrice = $mydata["DisPrice"];
        $p_Points = $mydata["Points"];
        $link = create_connect();

        $sql = "UPDATE  product SET Sort_ID ='$p_Sort_ID',Pname ='$p_Pname',Pdimg ='$p_Pdimg',Information ='$p_Information',Price ='$p_Price',DisPrice ='$p_DisPrice',Points ='$p_Points'";
        $result = execute_sql($link, "myShop", $sql);
        if ($result) {
            echo '{"state": true, "message":"更新會員成功!"}';
        } else {
            echo '{"state": false, "message":"更新會員失敗!"' . mysqli_error($link) . '}';
        }
        mysqli_close($link);
    } else {
        echo '{"state": false, "message":"欄位不得為空白!"}';
    }
} else {
    echo '{"state": false, "message":"缺少規定欄位!"}';
}
