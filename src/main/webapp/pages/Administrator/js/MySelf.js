new Vue({
    el: ".bodySelf",
    data() {
        return {
            MySelf: {

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
                url: "http://localhost:8866/code2/OneRoot/selectAllById",

            }).then(resp => {

                console.log(resp.data[0])
                _this.MySelf = resp.data[0]
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
                url: "http://localhost:8866/code2/OneRoot/updateMyself",
                data: _this.MySelf
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