new Vue({
    el: '.allUser',
    mounted() {
        this.selectAll()
        this.findDid()
    },

    methods: {
        selectAll() {
            const _this = this;
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/getMyCarIds",
                // data: _this.selectAll
            }).then(resp => {
                //设置表格数据
                _this.carportData = resp.data; // {rows:[],totalCount:100}
                //设置总记录数
                // _this.totalCount = resp.data.totalCount;
            })

        },

        filterTag(value, row) {
            console.log(value)
            console.log(row.state)
            console.log(this.carportData)
            return row.cState.stateName === value;
        },
        confirm(index, row) {

            const _this = this
            if (row.state == 0) {
                axios({
                    method: "post",
                    url: "http://localhost:8866/code2/TwoRoot/changeYn",
                    data: row
                }).then((resp) => {
                    if (resp.data === "success") {
                        _this.$message({
                            message: '修改成功',
                            type: 'success'
                        });
                        _this.selectAll()
                    } else {
                        _this.$message({
                            message: '修改失败',
                            type: 'error'
                        });
                        _this.selectAll()

                    }
                })
            } else {
                _this.$message({
                    message: '车位正在使用ing.........请稍后.....',
                    type: 'error'
                });
                _this.selectAll()
            }
        },

        dUserId() {
            const _this = this
                // alert(_this.radio)
            console.log(_this.inputBox)
            if (_this.radio == "0") {
                _this.inputBox = true
                _this.PostFrom = false
                delete _this.NewCarId.dUserId


            } else {
                _this.inputBox = false
                _this.PostFrom = true

            }
        },

    },

    data() {
        return {
            // 添加框
            dialogVisible: false,
            inputBox: true,
            PostFrom: false,
            // 弹窗数据
            radio: "0",

            rules: {

                ownership: [
                    { required: true, message: '请输入活动名称', trigger: 'blur' },
                    { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }
                ],
            },
            NewCarId: {


            },
            SonUser: {},
            carportData: [{
                "cState": {
                    "id": 0,
                    "state": 2,
                    "stateName": "已预约"
                },
                "carId": 4000003,
                "dId": 3000021,
                "dUserId": 0,
                "ownership": "DCADC",
                "state": 2,
                "plateNumber": "htoop",
                YN: 0
            }, {
                "cState": {
                    "id": 0,
                    "state": 2,
                    "stateName": "已预约"
                },
                "carId": 4000003,
                "dId": 3000021,
                "dUserId": 0,
                "ownership": "DCADC",
                "state": 2,
                "plateNumber": "htoop",
                YN: 1
            }, ],
            stateValue: [
                { text: '出租', value: '出租' },
                { text: '空闲', value: '空闲' },
                { text: '以预约', value: '以预约' },
                { text: '超时', value: '超时' }
            ],
        }
    }
})