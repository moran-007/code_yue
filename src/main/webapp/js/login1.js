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
                // alert("468543516531")
                // 发送ajax请求，添加数据
                axios({
                    url: "http://localhost:8866/code2/User/UserLogin",

                    method: "post",
                    data: _this.user,
                }).then(function(resp) {
                    alert(document.cookie)

                    if (resp.data == "success") {

                        _this.$message({
                            message: '登陆成功',
                            type: 'success'
                        });
                        location.href = "pages/user/index.html";

                    } else if (resp.data == "112") {
                        // alert("您输入的信息有误")
                        _this.$message({
                            message: '登录失败，账号或密码错误',
                            type: 'error'
                        });

                    }
                })

            }
        }
    }
})