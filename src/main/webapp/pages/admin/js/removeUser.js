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
                url: "http://localhost:8866/code2/TwoRoot/allSonUser",
                // data: _this.selectAll
            }).then(resp => {
                //设置表格数据
                _this.user = resp.data; // {rows:[],totalCount:100}
                //设置总记录数
                // _this.totalCount = resp.data.totalCount;
            })

        },

        // 查看详情
        ShowDate(index, row) {
            console.log(index, row);

            //2. 发送AJAX请求
            const _this = this;
            _this.user = row;


            // 发送ajax请求，添加数据
            axios({
                method: "post",
                url: "http://localhost:8866/code2/TwoRoot/ShowSonUser",
                data: row.dUserId
            }).then((resp) => {

                _this.UserSon = resp.data;

            })
            _this.updateVisible = true;

        }

        ,
        // 确认删除
        removeUserSon() {
            const _this = this
            console.log("删除" + _this.user.carId)
                // 发送ajax请求，添加数据
            axios({
                method: "post",
                url: "http://localhost:8866/code2/TwoRoot/removeUse",
                data: _this.user.carId
            }).then((resp) => {
                if (resp.data === "success") {
                    _this.$message({
                        message: '移除成功',
                        type: 'success'
                    });
                    _this.selectAll()
                    _this.updateVisible = false


                } else {

                }
                _this.UserSon = resp.data;

            })

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



    },

    data() {
        return {
            labelPosition: 'right',
            addBox: false,
            updateVisible: false,
            deleteAllBox: false,


            UserSon: {
                "age": 51,
                "passwd": "u26194",
                "phone": "2080269219",
                "sex": "0",
                "userId": 9000017,
                "username": "Frederick"
            },
            user: [{
                "cState": { "id": 0, "state": 0, "stateName": "出租" },
                "carId": 4000012,
                "dId": 0,
                "dUserId": 9000018,
                "ownership": "CBCCA",
                "state": 0
            }]


        }
    }
})