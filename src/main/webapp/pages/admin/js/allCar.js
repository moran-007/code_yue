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
                        url: "http://localhost:8866/code2/TwoRoot/AllCanUserCarId",
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



            },

            data() {
                return {

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
                        "plateNumber": "htoop"
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