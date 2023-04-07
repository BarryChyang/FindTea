/*
//此JS 為確認會員登入狀態
//登出按鈕 設定為 s2_logout_btn
//會員名稱 設定為 login_member
//
//
*/


//利用cookie uid 確認登入狀態
function check_member_state() {
    if (getCookie("UID01") != "" && getCookie("UID02") != "" && getCookie("UID03") != "") {
        console.log("UID存在");
        //傳遞至後端驗證UID
        var jsonData = {};
        jsonData["uid01"] = getCookie("UID01");
        jsonData["uid02"] = getCookie("UID02");
        jsonData["uid03"] = getCookie("UID03");
        console.log(JSON.stringify(jsonData));
        $.ajax({
            type: "POST",
            url: "mem_uid_check_api.php",
            data: JSON.stringify(jsonData),
            dataType: "json",
            success: uid_check_showdata,
            error: function () {
                alert("error_mem_uid_check_api.php");
            }
        })
    } else {
        alert("請先登錄或註冊會員");
        location.href = "20221228spa.html";
    }
}
//登出即時監聽
$("#s2_logout_btn").bind("click", function () {
    // console.log("test");

    setCookie("UID01", "", 7);
    setCookie("UID02", "", 7);
    setCookie("UID03", "", 7);

    location.href = "20221228spa.html";

})

function uid_check_showdata(data) {
    if (data.state) {
        //UID驗證成功
        //顯示會員相關訊息
        $("#login_member").text(data.data[0].Username + "會員您好!")

    } else {
        //UID驗證失敗 
        location.href = "20221228spa.html";

    }
}
function setCookie(cname, cvalue, exdays) {
    const d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function checkCookie() {
    let user = getCookie("username");
    if (user != "") {
        alert("Welcome again " + user);
    } else {
        user = prompt("Please enter your name:", "");
        if (user != "" && user != null) {
            setCookie("username", user, 30);
        }
    }
}
