new Vue({
    el: ".bodySelf",

    mounted() {
        this.selectAllOrder()
            // setInterval(() => {
            //     this.updateDuration();
            // }, 1000);
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
                url: "http://localhost:8866/code2/User/myOrders",
                // data: _this.selectAll
            }).then(resp => {
                //设置表格数据
                _this.tableData = resp.data; // {rows:[],totalCount:100}
                //设置总记录数
                // _this.totalCount = resp.data.totalCount;
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


        // 支付订单

        payOrder(row) {
            const _this = this
            _this.dialogVisible = true
            _this.change.orderId = row.id
            _this.change.carsId = row.carTable1.carId

            const start = new Date(row.createTime);
            const end = new Date();
            const diffInSeconds = Math.floor((end.getTime() - start.getTime()) / 60000);
            const minutes = Math.floor((diffInSeconds % 60));
            if (minutes <= 20 && diffInSeconds == 0) {
                const durationInHours = diffInSeconds / 60;
                const cost = (Math.floor(durationInHours) * 3).toFixed(2);
                const message = `订单号：${row.id}\n耗时 ${diffInSeconds} 分钟\n共计 ${durationInHours.toFixed(2)} 小时\n时长：${durationInHours.toFixed(2)}小时\n金额：${cost}元`;
                _this.showConfirmationDialog(message);
            } else {
                const durationInHours = diffInSeconds / 60;
                const cost = (Math.ceil(durationInHours) * 3).toFixed(2);
                const message = `订单号：${row.id}\n耗时 ${diffInSeconds} 分钟\n共计 ${durationInHours.toFixed(2)} 小时\n时长：${durationInHours.toFixed(2)}小时\n金额：${cost}元`;
                _this.showConfirmationDialog(message);
            }

        },
        showConfirmationDialog(message) {
            // 弹出确认框，显示支付信息

            this.dialogMessage = message;
            this.dialogVisible = true;
        },

        payConfirmed() {
            // 用户点击确认支付，执行支付操作
            // 调用接口
            // 发送后端请求
            const _this = this
                // console.log(row.id)
                // _this.change.orderId = row.id
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/payMyOrder",
                data: _this.change
            }).then(resp => {
                if (resp.data === "success") {
                    _this.$message({
                        message: '支付成功',
                        type: 'success'

                    });
                    _this.selectAllOrder()
                    this.dialogVisible = false;

                } else if (resp.data === "error") {
                    _this.$message({
                        message: '支付失败',
                        type: 'error'
                    });
                    _this.selectAllOrder()
                }
            })
        },
        cancelOrder(row) {
            const _this = this
            const start = new Date(row.createTime);
            const end = new Date();
            // 计算分钟数 diffInSeconds
            const diffInSeconds = Math.floor((end.getTime() - start.getTime()) / 60000);
            const minutes = Math.floor((diffInSeconds % 60));
            if (diffInSeconds < 30) {
                console.log(`cancel order ${row.id}`);

            } else {
                console.log(`cancel order ${row.id}` + "ufyaksjfnk");

                const durationInHours = Math.ceil(diffInSeconds / 60);
                const cost = durationInHours * 3;
                console.log(`支付订单 ${row.id}，耗时 ${diffInSeconds} 分钟，共计 ${durationInHours} 小时，需要支付 ${cost} 元。`);

            }
        },

        deleteOrder(row) {
            const _this = this
            console.log(row.id)
            _this.change.orderId = row.id
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/deleteMyOrder",
                data: _this.change
            }).then(resp => {
                if (resp.data === "success") {
                    _this.$message({
                        message: '删除成功',
                        type: 'success'
                    });
                    _this.selectAllOrder()
                } else if (resp.data === "error") {
                    _this.$message({
                        message: '删除失败',
                        type: 'error'
                    });
                    _this.selectAllOrder()
                }
            })
        },
    },

    data() {
        return {
            change: {},
            durationList: [],
            tableData: [],
            // 支付订单
            dialogVisible: false,
            dialogMessage: ' ',
        }
    }
})