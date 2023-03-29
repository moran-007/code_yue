new
Vue({
    el: '.allUser',

    mounted() {
        this.allNullCarId()
    },
    methods: {


        // 获取/查询信息
        // 获取信息
        getSelf() {
            const _this = this
            console.log(
                _this.addUser
            )
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/selectById1",
                data: _this.addUser
            }).then(resp => {
                if (resp.data == "error") {
                    this.$message({
                        type: "error",
                        message: '您输入的用户名有误，查询失败'
                    })
                    _this.$refs[addUser].resetFields();
                } else {
                    _this.addUser = resp.data[0]

                    _this.authorizationCarId.dUserId = _this.addUser.userId

                    console.log("查询成功", _this.authorizationCarId)
                        // const arr = Object.value(_this.carportData.cState)

                    // _this.clear()
                    // console.log(arr)
                    // console.log(resp.data)
                }
            })
        },

        // 空闲车位查询
        allNullCarId() {
            const _this = this
            axios({
                method: "post",
                url: "http://localhost:8866/code2/TwoRoot/AllNullCarID",
                data: _this.ChosesID
            }).then(resp => {
                _this.ChosesID = resp.data


                // console.log(resp)
                console.log(resp.data)
            })
        },

        // 授权
        insertUser() {
            const _this = this;
            console.log(_this.authorizationCarId)
            axios({
                method: 'post',
                url: 'http://localhost:8866/code2/TwoRoot/authorizationCarId',
                data: _this.authorizationCarId
            }).then(resp => {
                if (resp.data === "success") {
                    // 弹出消息提示
                    _this.$message({
                        message: '恭喜你，授权成功',
                        type: 'success'
                    });
                    _this.allNullCarId()
                } else {
                    _this.$message({
                        message: '请按照规则填写',
                        type: 'error'
                    });


                }
            })
        },
        resetForm(addUser) {
            this.$refs[addUser].resetFields();
        }
    },

    data() {
        return {
            labelPosition: 'right',
            addBox: false,
            updateVisible: false,
            deleteAllBox: false,


            multipleSelection: [],
            authorizationCarId: {
                carId: "",
                dUserId: ""
            },

            ChosesID: {},
            addUser: {

            },


        }
    }
})
