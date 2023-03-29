// document.getElementById("submit_btn").onclick = function() {
//     temp = userRule + passwd + RPasswd
// }
new Vue({
    el: '.div-right',
    methods: {
        // 输入框验证
        // 用户名
        name() {
            const _this = this

            const username = document.getElementById("username").value;
            /*定义正则表达式*/
            const reg = /^[A-Za-z0-9]{4,10}$/;
            const flag = reg.test(username);

            if (username.length != 0) {
                if (!flag) {
                    document.getElementById("name").innerHTML = "<span style='color : red;'>用户名格式有误</span>";
                    userRule = false;
                } else {
                    document.getElementById("name").innerHTML = "<span color='green'><b>√</b></span>";
                    userRule = true;
                    return
                }
            } else {
                document.getElementById("name").innerHTML = "<span color='green'>用户名/邮箱/手机号</span>";
                userRule = false
            }

        },
        // 密码
        psd() {
            const _this = this
                /*获取提示框*/
            const password = document.getElementById("password").value;
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
                passwd = false;

            }

        },
        /*验证重复密码*/
        psd2() {

            const _this = this
            const password = document.getElementById("password").value;
            const repeat = document.getElementById("repeat").value;

            if (repeat.length !== 0) {
                /*进行比对*/
                if (password !== repeat) {
                    RPasswd = false;
                    psd_two.innerHTML = "<span style=' color:red;'>两次输入的密码不一致！</span>";
                } else {
                    RPasswd = true;
                    psd_two.innerHTML = "<span style=' color:green'><b>√</b></span>";
                }
            } else {
                document.getElementById("psd_two").innerHTML = "<span color='green'>请确认密码</span>";
                RPasswd = false;

            }

        },

        // 手机号验证
        phoneRule() {
            // const _this = this
            /*获取提示框*/
            const phone = document.getElementById("phone").value;
            /*定义正则表达式*/
            const reg = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            const flag = reg.test(phone);

            if (phone.length != 0) {
                if (!flag) {

                    document.getElementById("phoneLab").innerHTML = "<span style='color : red;'>手机号格式有误</span>";
                    phoneRul = false;
                } else {
                    document.getElementById("phoneLab").innerHTML = "<span color='green'><b>√</b></span>";
                    phoneRul = true;
                }
            } else {
                document.getElementById("phoneLab").innerHTML = "<span color='green'>手机号</span>";
                phoneRul = false;

            }
        },
        // 邮箱规则
        ages() {
            /*获取提示框*/
            const email = parseInt(document.getElementById("age").value);

            /*定义正则表达式*/
            const reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
            const flag1 = reg.test(email);

            if (email.length != 0) {
                if (!flag1) {

                    document.getElementById("sgeLab").innerHTML = "<span color='green'><b>√</b></span>";
                    ageRul = true;
                } else {

                    document.getElementById("sgeLab").innerHTML = "<span style='color : red;'>请输入正确的邮箱</span>";
                    ageRul = false;
                }
            } else {
                document.getElementById("sgeLab").innerHTML = "<span color='green'>年龄</span>";
                ageRul = false
            }

        },




        // 添加数据
        addUser() {
            const _this = this;
            //    let sexRule

            axios({
                method: "post",
                url: "http://localhost:8774/code_yue/User/registerUser",
                data: _this.user
            }).then(function(resp) {
                if (resp.data == "success") {
                    //添加成功
                    // alert("添加成功");
                    //关闭窗口

                    // 重新查询数据
                    // _this.selectAll();
                    // 弹出消息提示
                    _this.$message({
                        message: '恭喜你，注册成功',
                        type: 'success'
                    });
                    window.location.href = "../index.html";


                } else if (resp.data == "12345") {
                    console.log(resp.data)
                        // alert("您输入的信息有误")
                    _this.$message({
                        message: '您输入的信息有误，添加失败',
                        type: 'error'
                    });
                    register.reset()


                }
            })
        },


    },



    data() {
        return {
            user: {},
            Did: [],
            sexRule: false,
            ageRul: false,
            phoneRul: false,
            userRule: false,
            RPasswd: false
        }
    }


})