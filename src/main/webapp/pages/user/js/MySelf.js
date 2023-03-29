new Vue({
    el: ".bodySelf",
    data() {
        return {
            qwq: {
                // age: 38,
                // passwd: "123456",
                // phone: "15599996666",
                // sex: "男",
                // userId: "9000056",
                // username: "ceshi"
            },
            form: {
                name: '156156',
                region: '',
                date1: '',
                date2: '',
                delivery: false,
                type: [],
                resource: '',
                desc: ''
            }
        }
    },
    mounted() {
        this.getSelf()
    },

    methods: {
        onSubmit() {
            console.log('submit!');
            console.log(this.qwq)
        },
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

                _this.qwq = resp.data[0]
                console.log(resp)
                    // const arr = Object.value(_this.carportData.cState)

                // _this.clear()
                // console.log(arr)
                // console.log(resp.data)
            })
        },
        // 提交修改
        onSubmit() {
            const _this = this
            axios({
                method: "post",
                url: "http://localhost:8866/code2/User/updateById",
                data: _this.qwq
            }).then(resp => {
                if (resp.data === "success") {
                    alert("成功")
                    _this.getSelf
                } else {
                    alert("失败")
                    _this.getSelf

                }
            })
        },

    }
})