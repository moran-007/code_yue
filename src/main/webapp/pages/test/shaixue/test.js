new Vue({
    el: ".qqq",
    data() {
        return {
            tableData: [{
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄',
                state: '1'
            }, {
                date: '2016-05-04',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1517 弄',
                state: '2'
            }, {
                date: '2016-05-01',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1519 弄',
                state: '1'
            }, {
                date: '2016-05-03',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1516 弄',
                state: '2'
            }]
        }
    },
    methods: {

        filterstate(value, row) {
            console.log(value)
            console.log(row.state)
            console.log(this.tableData)
            return row.state === value;

        },

    }

})