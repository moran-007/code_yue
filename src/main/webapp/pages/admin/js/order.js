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
                url: "http://localhost:8866/code2/Order/RootTwoAllOrder",
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

    },
    data() {
        return {
            tableData: [],
            change: {},
            durationList: [],
            tableData: [],
            // 支付订单
            dialogVisible: false,
            dialogMessage: ' ',
        }
    }
})