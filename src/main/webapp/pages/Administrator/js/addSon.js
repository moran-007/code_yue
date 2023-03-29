let cookie = document.cookie;
new
Vue({
    el: '.allUser',

    methods: {


        // 新增数据
        insertUser() {
            const _this = this;
            console.log(_this.addUser)

            axios({
                method: 'post',
                url: 'http://localhost:8866/code2/OneRoot/addUser',
                data: _this.addUser
            }).then(resp => {
                if (resp.data === "success") {
                    // 弹出消息提示
                    _this.$message({
                        message: '恭喜你，添加成功',
                        type: 'success'
                    });
                    window.setTimeout(function() {
                        location.href = "AddSon.html"
                    }, 1000)
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
            // 复选框选中事件
            selectedIds: [],
            multipleSelection: [],

            addUser: {

            },
            rules: {
                username: [{
                    required: true,
                    message: '请输入用户名',
                    trigger: 'blur'
                }, {
                    min: 3,
                    max: 8,
                    message: '长度在 3 到 5 个字符',
                    trigger: 'blur'
                }],
                name: [{
                    required: true,
                    message: '请输入默认密码',
                    trigger: 'blur'
                }, {
                    min: 6,
                    max: 16,
                    message: '长度在 6 到 16 个字符',
                    trigger: 'blur'
                }],
                passwd: [{
                    required: true,
                    message: '请输入默认密码',
                    trigger: 'blur'
                }, {
                    min: 6,
                    max: 16,
                    message: '长度在 6 到 16 个字符',
                    trigger: 'blur'
                }],

            }

        }
    }
})