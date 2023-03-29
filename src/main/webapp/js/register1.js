// function

// document.getElementById("changeImg").onclick = function() {
//         document.getElementById("auth_code_img").src = "/demo/checkCodeServlet?" +
//             new Date().getMilliseconds();
//     }
/*验证密码*/

let userRule;
let passwd;
let RPasswd;
document.getElementById("username").onblur = function() {
    const username = this.value;
    /*定义正则表达式*/
    const reg = /^[A-Za-z0-9]{6,20}$/;
    const flag = reg.test(username);

    if (username.length != 0) {
        if (!flag) {

            document.getElementById("name").innerHTML = "<span style='color : red;'>用户名格式有误</span>";
            userRule = false;
        } else {
            document.getElementById("psd_one").innerHTML = "<span color='green'><b>√</b></span>";
            userRule = true;
        }
    } else {
        document.getElementById("name").innerHTML = "<span color='green'>用户名/邮箱/手机号</span>";

    }
}

/*获取提示框*/
document.getElementById("password").onblur = function() {
    const password = this.value;
    /*定义正则表达式*/
    const reg = /^[A-Za-z0-9]{6,20}$/;
    const flag = reg.test(password);

    if (password.length != 0) {
        if (!flag) {

            document.getElementById("psd_one").innerHTML = "<span style='color : red;'>密码格式有误！</span>";
            passwd = false;
        } else {
            document.getElementById("psd_one").innerHTML = "<span color='green'><b>√</b></span>";
            passwd = true;
        }
    } else {
        document.getElementById("psd_one").innerHTML = "<span color='green'>请输入6-20位密码</span>";

    }
}

/*验证重复密码*/
let timeoutID;


document.getElementById("repeat").onkeyup = function() {
    const password = document.getElementById("password").value;
    const repeat = document.getElementById("repeat").value;
    //对上次未完成的延时操作进行取消
    clearTimeout(timeoutID);
    //对于密码比对延迟500ms，避免频繁比对
    timeoutID = setTimeout(function() {
        if (repeat.length !== 0) {
            /*进行比对*/
            if (password !== repeat) {
                RPasswd = false;
                psd_two.innerHTML = "<span style=' color:red;'>两次输入的密码不一致！</span>";
            } else {
                RPasswd = true;
                psd_two.innerHTML = "<span style=' color:green'><b>√</b></span>";
            }
        }
    });
}


document.getElementById("submit_btn").onclick = function() {
    temp = userRule + Flag2 + passwd + RPasswd
}