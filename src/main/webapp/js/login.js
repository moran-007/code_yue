new Vue({
    el: '.div-right',
    data() {
        return {
            user: {},
        }

    },

    methods: {
        // 登录功能
        loginUser() {
            //console.log(this.brand);
            const _this = this;
            const type = document.getElementById("Stitchtype").options[document.getElementById("Stitchtype").selectedIndex].value;
            console.log(document.getElementById("Stitchtype").options[document.getElementById("Stitchtype").selectedIndex])
            if (type === "User") {
                console.log(location.pathname)
                    // 发送ajax请求，添加数据
                axios({
                    method: "post",
                    url: "http://localhost:8774/code_yue/User/UserLogin",
                    data: _this.user,
                }).then((resp) => {
                    if (resp.data == "success") {
                        //添加成功
                        // alert("添加成功");
                        //关闭窗口

                        // 重新查询数据
                        // _this.selectAll();
                        // 弹出消息提示
                        _this.$message({
                            message: '登陆成功',
                            type: 'success'
                        });
                        location.href = "pages/user/index.html";
                        // window.setTimeout(function() {
                        //     location = "./pages/user/index.html";
                        // }, 1800)

                    } else if (resp.data == "deface") {
                        // alert("您输入的信息有误")
                        _this.$message({
                            message: '登录失败，账号或密码错误',
                            type: 'error'
                        });

                    }
                })
            } else if (type === "admin") {
                // 发送ajax请求，添加数据
                axios({
                    method: "post",
                    url: "http://localhost:8774/code_yue/admin/UserLogin",
                    data: _this.user
                }).then((resp) => {
                    if (resp.data == "success") {
                        //添加成功
                        // alert("添加成功");
                        //关闭窗口

                        // 重新查询数据
                        // _this.selectAll();
                        // 弹出消息提示
                        _this.$message({
                            message: '恭喜你，登录成功',
                            type: 'success'
                        });
                        window.location.href = "pages/Administrator/index.html";
                        // window.setTimeout(function() {
                        //     location = "./pages/user/index.html";
                        // }, 1800)

                    } else if (resp.data == "deface") {
                        // alert("您输入的信息有误")
                        _this.$message({
                            message: '您输入的信息有误，添加失败',
                            type: 'error'
                        });
                        // window.setTimeout(function() {
                        //     alert('1234556')
                        //     location = './index.html';
                        // }, 1400)
                    }
                })
            }


        }
    }

    ,

})


// function check() {
//     // 注意以下使用方法
//     const type = document.getElementById("Stitchtype").options[document.getElementById("Stitchtype").selectedIndex].value;
//     if (type == "User") {
//         document.getElementById("login").action = "/code2/User/UserLogin"
//     } else if (type == "OneRoot") {
//         document.getElementById("login").action = "/code2/OneRoot/UserLogin"
//     } else if (type == "TwoRoot") {
//         document.getElementById("login").action = "/code2/TwoRoot/UserLogin"
//     }
// }