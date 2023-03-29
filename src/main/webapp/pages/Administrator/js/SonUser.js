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
        // 展示数据
        showUser(index, row) {
            const _this = this;

            console.log(index, row.id)

            alert("egew")
            axios({
                    method: "post",
                    url: "http://localhost:8866/code2/OneRoot/selectByCarDid",
                    data: row.id
                }).then(resp => {
                    //设置表格数据
                    _this.user = resp.data; // {rows:[],totalCount:100}

                    _this.ShowData = true
                        //设置总记录数
                        // _this.totalCount = resp.data.totalCount;
                })
                // change = true;
                // _this.user = user;
                // _this.updateVisible = true;
        },




    },

    data() {
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
            }]


        }
    }
})