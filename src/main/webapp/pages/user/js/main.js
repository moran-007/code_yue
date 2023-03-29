new Vue({
    el: ".bodySelf",


    methods: {
        // 预约
        appointment() {
            const _this = this
            document.getElementById("selectCarPlaceBox").style.display = "flex"
            _this.carportData = []

            axios({
                method: "post",
                url: "http://localhost:8866/code2/CarTable1/selectAllById",
                data: _this.Did
            }).then(resp => {
                _this.Did = resp.data
                _this.clear()
            })
        },
        // 清空
        clear() {
            console.log(this.gridData)
                // this.value = null
            this.$set(this.gridData, 'dId', null)

        },

        // 选中事件
        applicantTypes(value) {
            const _this = this
            this.Did.forEach(item => {
                if (item.id === value) {
                    // console.log(item)
                    this.form.applicantTypes = item.label
                    console.log(item.id)
                    this.carportData = item
                    _this.tableForm()

                }
            })
        },

        // 根据id请求数据库==选择位置
        tableForm() {
            const _this = this
            axios({
                method: "post",
                url: "http://localhost:8866/code2/CarTable1/selectByDid",
                data: _this.carportData
            }).then(resp => {
                _this.carportData = resp.data
                console.log("==============")
                console.log(_this.carportData)
            })
        },


        filterTag(value, row) {
            console.log(value)
            console.log(row.state)
            console.log(this.carportData)
            return row.cState.stateName === value;
        },

        // 初步确认信息，为order做准备
        confirm(index, row) {
            const _this = this
            if (row.state == 0) {
                _this.getSelf()
                _this.dialogVisible = true
                _this.orderData.placeId = row.dId
                _this.orderData.carsId = row.carId
                _this.orderData.plateNumber = row.plateNumber
                _this.orderData.createTime = new Date().getTime()
                console.log(_this.orderData)
                console.log(index)
                console.log(row.dId)
            } else {
                _this.$message({
                    message: '你不能进行此操作',
                    type: 'error'
                });
            }
        },
        // 获取个人信息车牌/联系方式
        // 获取信息
        getSelf() {
            const _this = this
            const cookie = document.cookie
                // console.log(cookie)
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/selectById2",
                data: document.cookie
            }).then(resp => {


                _this.selfData = resp.data[0]
                console.log(resp)
                    // const arr = Object.value(_this.carportData.cState)

                // _this.clear()
                // console.log(arr)
                // console.log(resp.data)
            })
        },
        submitForm(selfData) {
            const _this = this
            this.$refs[selfData].validate((valid) => {
                if (valid) {
                    _this.orderData.plateNumber = _this.selfData.plateNumber
                    _this.orderData.phone = _this.selfData.phone
                    _this.orderData.userId = _this.selfData.userId

                    console.log(_this.orderData)
                    axios({
                        method: "post",
                        url: "http://localhost:8866/code2/Order/insertOrder",
                        data: _this.orderData
                    }).then(resp => {


                        console.log(resp)
                        _this.$message({
                            message: '预约成功',
                            type: 'success'
                        });
                        _this.carportData = []
                        document.getElementById("selectCarPlaceBox").style.display = "none"

                        _this.dialogVisible = false


                    })
                    console.log(_this.selfData)

                } else {
                    console.log('error submit!!');
                    return false;
                }
            });
        },
        resetForm(selfData) {
            this.$refs[selfData].resetFields();
        },

    },
    data() {
        return {
            addBox: false,
            dialogVisible: false,
            selectCarPlaceBox: false,
            dialogFormVisible: false,
            formLabelWidth: '120px',
            carAppointment: {},
            gridData: [],
            Did: [],

            // 个人信息：车牌/电话
            selfData: {
                // phone: 1111111111,
                // plateNumber: "站k-234"
            },
            rules: {
                plateNumber: [
                    { required: true, message: '请输入车牌号', trigger: 'blur' },
                    { pattern: /[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z][A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳使领]$/, message: '请输入正确的车牌号', trigger: 'blur' }

                ],
                phone: [
                    { required: true, message: '请输入联系方式', trigger: 'blur' },
                    { pattern: /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/, message: '请输入正确的手机号码', trigger: 'blur' }

                ]
            }, // 订单表
            orderData: {},
            carportData: [
                // {
                //     "cState": {
                //         "id": 0,
                //         "state": 2,
                //         "stateName": "已预约"
                //     },
                //     "carId": 4000003,
                //     "dId": 3000021,
                //     "dUserId": 0,
                //     "ownership": "DCADC",
                //     "state": 2,
                //     "plateNumber": "htoop"
                // },

                // {
                //     "cState": {
                //         "id": 0,
                //         "state": 2,
                //         "stateName": "已预约"
                //     },
                //     "carId": 4000017,
                //     "dId": 3000021,
                //     "dUserId": 9000016,
                //     "ownership": "ACBCD",
                //     "state": 2
                // }
            ],
            // stateValue: [
            //     { text: '1', value: 1 },
            //     { text: '0', value: 0 }
            // ],
            stateValue: [
                { text: '1', value: '出租' },
                { text: '0', value: '空闲' },
                { text: '2', value: '以预约' },
                { text: '3', value: '超时' }
            ],
            form: {
                name: '',
                region: '',
                date1: '',
                date2: '',
                delivery: false,
                type: [],
                resource: '',
                desc: ''
            },



            userData: {
                num: "k123456",
                phone: "xxx-xxxx-xxxx"
            }
        }
    }
})