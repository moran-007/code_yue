new Vue({
    el: '.allUser',
    mounted() {
        this.selectAll()
    },

    mounted() {
        this.selectAll()
    },
    methods: {
        selectAll() {
            const _this = this
                // alert("*******")
            axios({
                method: "post",
                url: "http://localhost:8866/code2/OneRoot/selectByDid",
            }).then((resp) => {
                //设置表格数据
                _this.userSon = resp.data; // {rows:[],totalCount:100}
                //设置总记录数
                // _this.totalCount = resp.data.totalCount;
            })

        },
        submitForm(changePsd) {
            const _this = this
            console.log(_this.changePsd)

            this.$refs[changePsd].validate((valid) => {
                console.log(_this.changePsd)
                if (valid) {
                    axios({
                        method: "post",
                        url: "http://localhost:8866/code2/OneRoot/updateSonPasswd",
                        data: _this.changePsd
                    }).then((resp) => {
                        if (resp.data === "success") {
                            _this.$message({
                                message: '重置成功',
                                type: 'success'

                            })
                            _this.ShowData = false

                        }
                    })
                } else {
                    console.log('error submit!!');
                    return false;
                }
            });
        },
        resetForm(userSon) {
            this.$refs[userSon].resetFields();
        },
        // 展示数据
        showUser(index, row) {
            const _this = this;
            this.ShowData = true
            console.log(index, row.id)
            this.changePsd.id = row.id

        },




    },

    data() {
        let validatePass = (rule, value, callback) => {
            if (value === '') {
                callback(new Error('请输入密码'));
            } else {
                if (this.changePsd.checkPass !== '') {
                    this.$refs.changePsd.validateField('checkPass');
                }
                callback();
            }
        };
        let validatePass2 = (rule, value, callback) => {
            if (value === '') {
                callback(new Error('请再次输入密码'));
            } else if (value !== this.changePsd.newPasswd) {
                callback(new Error('两次输入密码不一致!'));
            } else {
                callback();
            }
        };
        return {
            labelPosition: 'right',
            ShowData: false,
            deleteAllBox: false,
            userSon: [{
                "dId": 20026,
                "id": 3000029,
                "passwd": "a892592",
                "name": "天河区天河路568号"
            }, {
                "dId": 20026,
                "id": 3000044,
                "passwd": "123123",
                "name": "123"
            }],
            user: [{
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                name: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                name: "string"
            }],
            changePsd: {
                newPasswd: '',
                checkPass: '',
                id: ''
            },
            rules: {
                pass: [
                    { validator: validatePass, trigger: 'blur' }
                ],
                checkPass: [
                    { validator: validatePass2, trigger: 'blur' }
                ]
            }


        }
    }
})