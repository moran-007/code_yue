new Vue({
    el: ".bodySelf",
    methods: {
        appointment() {
            alert("111")
            axios({
                methods: "post",
                url: "http://localhost:8866/code2/selectAllServlet",
                data: this.carAppointment
            }).then((resp) => {

            }).catch((err) => {

            });
        }
    },
    data() {
        return {
            addBox: false,

            dialogTableVisible: false,
            dialogFormVisible: false,
            formLabelWidth: '120px',
            carAppointment: {},
            gridData: [{
                carId: 4000000,
                dId: 3000020,
                dUserId: 0,
                ownership: "DCACA",
                rootTable2: {
                    dId: 0,
                    id: 0,
                    username: "123"
                }
            }],
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
        }
    }
})