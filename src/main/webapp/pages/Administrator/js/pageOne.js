new Vue({
    el: '.allUser',
    mounted() {
        this.selectAll()
    },

    methods: {
        selectAll() {
            let _this = this;
            axios({
                method: "post",
                // url: "http://localhost:8066/demo/goods/selectByPageAndCondition?currentPage=" + _this.currentPage + "&pageSize=" + _this.pageSize,
                url: "http://localhost:8866/code2/selectAllServlet",
                // data: _this.selectAll
            }).then(resp => {
                //设置表格数据
                _this.user = resp.data; // {rows:[],totalCount:100}
                //设置总记录数
                // _this.totalCount = resp.data.totalCount;
            })

        },
        deleteRow(index, rows) {
            rows.splice(index, 1);
        },
        changeBox(index, row) {
            // change = true;
            let _this = this;
            _this.user = row;
            _this.updateVisible = true;
        },

        // 新增数据
        insertUser() {
            const _this = this;
            console.log(_this.addUser)

            axios({
                method: 'post',
                url: 'http://localhost:8866/code2/User/insertUser',
                data: _this.addUser
            }).then(resp => {
                if (resp.data === "success") {
                    _this.addBox = false;
                    // 重新查询数据
                    _this.selectAll();
                    // 弹出消息提示
                    _this.$message({
                        message: '恭喜你，添加成功',
                        type: 'success'
                    });

                }
            })
        },
        // 修改数据
        updateUser() {

            // const _this = this;
            console.log("修改");
            const _this = this;
            axios({
                    method: 'post',
                    url: "http://localhost:8866/code2/User/updateById",
                    data: this.user

                }).then(function(resp) {
                    if (resp.data == "success") {
                        //添加成功

                        //关闭窗口
                        _this.updateVisible = false;

                        // 重新查询数据
                        _this.selectAll();
                        // 弹出消息提示
                        _this.$message({
                            message: '恭喜你，修改成功',
                            type: 'success'
                        });

                    }
                })
                // _this.updateVisible = false;
        },
        // 删除数据
        handleDelete(index, row) {
            console.log(index, row.userId);
            //2. 发送AJAX请求
            const _this = this;

            // 发送ajax请求，添加数据
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/deleteByUserId",
                data: row.userId
            }).then(function(resp) {
                if (resp.data == "success") {
                    //删除成功

                    // 重新查询数据
                    _this.selectAll();
                    // 弹出消息提示
                    _this.$message({
                        message: '恭喜你，删除成功',
                        type: 'success'
                    });

                } else if (resp.data == "defeated")
                // _this.selectAll();
                    this.$message({
                    message: '删除失败',
                    type: 'error'
                })
            })

        },

        // 复选框选中事件
        handleSelectionChange(val) {
            this.multipleSelection = val;
            // console. log(this.multipleSelection)
        },

        tableRowClassName({
            row,
            rowIndex
        }) {
            if (rowIndex === 1) {
                return 'warning-row';
            } else if (rowIndex === 3) {
                return 'success-row';
            }
            return '';
        },
        // 批量删除
        deleteAll() {
            // console.log(this.multipleSelection)

            //1. 创建id数组 [1,2,3], 从 this.multipleSelection 获取即可
            for (let i = 0; i < this.multipleSelection.length; i++) {
                let selectionElement = this.multipleSelection[i];
                this.selectedIds[i] = selectionElement.userId;

            }

            //2. 发送AJAX请求
            let _this = this;

            // 发送ajax请求，添加数据
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/deleteByUserIds",
                data: _this.selectedIds
            }).then(function(resp) {
                if (resp.data == "success") {
                    //删除成功
                    _this.deleteAllBox = false;
                    // 重新查询数据
                    _this.selectAll();
                    // 弹出消息提示
                    _this.$message({
                        message: '恭喜你，删除成功',
                        type: 'success'
                    });

                }
            }).catch(() => {
                _ths.deleteAllBox = false
                    //用户点击取消按钮
                this.$message({
                    type: 'info',
                    message: '已取消删除'
                });
            })
        },
        // 批量删除显示对话框
        showDeleteAllBox() {
            if (this.multipleSelection.length != 0) {
                this.deleteAllBox = true
            } else {
                this.$message({
                    message: '请选择需要删除的内容'
                })
            }
        },

        // 重置用户添加栏
        resetForm(formName) {
            this.$refs[formName].resetFields();
        },

        handleClose(done) {
            this.$confirm('确认关闭？')
                .then(_ => {
                    done();
                })
                .catch(_ => {});
        },
        handleClose1(done) {
            this.$confirm('确认关闭？')
                .then(_ => {
                    done();
                })
                .catch(_ => {});
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

            user: [{
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }, {
                age: "1",
                passwd: "string",
                phone: "string",
                sex: "string",
                userId: "number",
                username: "string"
            }],
            addUser: {
                age: "",
                passwd: "",
                phone: "",
                sex: "",
                userId: "",
                username: ""
            },
            rules: {
                username: [{
                    required: true,
                    message: '请输入用户名',
                    trigger: 'blur'
                }, {
                    min: 3,
                    max: 5,
                    message: '长度在 3 到 5 个字符',
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

                sex: [{
                    required: true,
                    message: '请选择性别',
                    trigger: 'change'
                }],
                phone: [{
                    required: true,
                    message: '请填写活动形式',
                    trigger: 'blur'
                }],
                age: [{
                    required: true,
                    message: '请输入年龄',
                    trigger: 'blur'
                }]
            }

        }
    }
})