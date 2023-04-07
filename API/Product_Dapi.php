<?php
//{"ID":"9"}
// {"state":true,"message":"資料刪除成功 !!"}
// {"state":true,"message":"無資料可刪除 !!"}
// {"state" :false,"message":"資料刪除失敗 !! ...err Code:相關訊息"}
// {"state":false,"message":"欄位傳遞空值 !!"}
// {"state":false,"message":"欄位傳遞資料失敗 !!"}

//利用input ID去執行撈取該筆資料
$data = file_get_contents("php://input", "r");
$jsonData = array();
$jsonData = json_decode($data, true);

if (isset($jsonData["ID"])) {
    if ($jsonData["ID"] != "") {
        $p_id = $jsonData["ID"];
        require_once("dbtools.php");

        $link = create_connect();
        $sql = "DELETE FROM product WHERE ID = '$p_id'";
        $result = execute_sql($link, "myShop",$sql);

        if ($result && mysqli_affected_rows($link) == 1) {

            echo '{"state": true, "message":"刪除資料成功!"}';
        } else {
            echo '{"state": false, "message":"刪除資料失敗!'.mysqli_error($link).'"}';
        }
        mysqli_close($link);
    } else {
        echo '{"state": false, "message":"欄位傳遞空值!"}';
    }
} else {
    echo '{"state": false, "message":"缺少規定欄位!"}';
}
