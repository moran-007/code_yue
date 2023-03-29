new Vue({
    el: ".bodySelf",

    mounted() {
        this.selectAllOrder()

    },
    created() {
        const _this = this

        setInterval(() => {
            _this.updateDuration();
        }, 1000);

    },

    methods: {
        selectAllOrder() {
            const _this = this

            axios({
                method: "post",
                url: "http://localhost:8866/code2/Order/selectAll",
                // data: _this.selectAll
            }).then(resp => {
                //设置表格数据
                _this.tableData = resp.data; // {rows:[],totalCount:100}
                //设置总记录数
                _this.durationList = _this.tableData.map((item) => {
                    // alert("b")
                    // console.log("**")
                    // alert(item.id)
                    return {
                        id: item.id,
                        duration: item.state === 1 ? _this.formatDuration(item.createTime, item.payTime) : (item.state === 0 ? new Date() : '')
                    };
                })
            })

        },
        updateDuration() {
            const _this = this;
            const data = _this.tableData;
            for (let i = 0; i < data.length; i++) {
                if (data[i].state === 0) {
                    const id = data[i].id;
                    const duration = this.formatDuration(data[i].createTime);
                    const item = _this.durationList.find((item) => item.id === id);
                    if (item) {
                        item.duration = duration;
                    }
                }
            }
        },

        formatDuration(startTime, endTime) {
            const start = new Date(startTime);
            const end = endTime ? new Date(endTime) : new Date();
            const diffInSeconds = Math.floor((end.getTime() - start.getTime()) / 1000);
            const days = Math.floor(diffInSeconds / (3600 * 24));
            const hours = Math.floor((diffInSeconds % (3600 * 24)) / 3600);
            const minutes = Math.floor((diffInSeconds % 3600) / 60);
            const seconds = diffInSeconds % 60;
            return `${days}天${hours}时${minutes}分${seconds}秒`;
        },

        updateDuration() {
            const _this = this;
            const data = _this.tableData;
            for (let i = 0; i < data.length; i++) {
                if (data[i].state === 0) {
                    const id = data[i].id;
                    const duration = this.formatDuration(data[i].createTime);
                    const item = _this.durationList.find((item) => item.id === id);
                    if (item) {
                        item.duration = duration;
                    }
                }
            }
        },

        formatDuration(startTime, endTime) {
            const start = new Date(startTime);
            const end = endTime ? new Date(endTime) : new Date();
            const diffInSeconds = Math.floor((end.getTime() - start.getTime()) / 1000);
            const days = Math.floor(diffInSeconds / (3600 * 24));
            const hours = Math.floor((diffInSeconds % (3600 * 24)) / 3600);
            const minutes = Math.floor((diffInSeconds % 3600) / 60);
            const seconds = diffInSeconds % 60;
            return `${days}天${hours}时${minutes}分${seconds}秒`;
        },

    },
    data() {
        return {
            tableData: [
                // {
                //     "cState": {
                //         "id": 800000023,
                //         "state": 1
                //     },
                //     "carTable1": {
                //         "carId": 0,
                //         "dId": 3000044,
                //         "dUserId": 0,
                //         "ownership": "V-97",
                //         "plateNumber": "陕N-8MOK",
                //         "state": 1,
                //         "yn": 0
                //     },
                //     "carsId": 0,
                //     "createTime": "2023-03-10 15:43:12",
                //     "id": 800000023,
                //     "isDeleted": 0,
                //     "payTime": "2003-11-21 13:10:37",
                //     "rootTable2": {
                //         "dId": 3000044,
                //         "id": 800000023
                //     },
                //     "state": 1,
                //     "updateTime": "2023-03-10 15:43:12",
                //     "userId": 9000014,
                //     "userTable": {
                //         "phone": "1081352852",
                //         "plateNumber": "陕N-8MOK",
                //         "userId": 9000014
                //     }
                // },
                // {
                //     "cState": {
                //         "id": 800000029,
                //         "state": 2
                //     },
                //     "carTable1": {
                //         "carId": 0,
                //         "dId": 3000044,
                //         "dUserId": 0,
                //         "ownership": "V-97",
                //         "plateNumber": "陕Z-HKKH",
                //         "state": 2,
                //         "yn": 0
                //     },
                //     "carsId": 0,
                //     "createTime": "2023-03-10 15:43:17",
                //     "id": 800000029,
                //     "isDeleted": 0,
                //     "payTime": "2006-06-05 20:29:54",
                //     "rootTable2": {
                //         "dId": 3000044,
                //         "id": 800000029
                //     },
                //     "state": 2,
                //     "updateTime": "2023-03-10 15:43:17",
                //     "userId": 9000056,
                //     "userTable": {
                //         "phone": "124412124",
                //         "plateNumber": "陕Z-HKKH",
                //         "userId": 9000056
                //     }
                // }

            ]
        }
    }
})