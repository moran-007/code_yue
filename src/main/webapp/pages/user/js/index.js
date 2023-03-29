new Vue({
    el: ".main",
    methods: {
        handleSelect(key, keyPath) {
            console.log(key, keyPath);
        },
        exit() {

            axios({
                method: "get",
                url: "http://localhost:8866/code2/User/exit"
            }).then((resp) => {
                if (resp.data === "success") {
                    top.window.location.href = "http://localhost:8866/code2";
                }
            })

        },

        data() {
            return {
                qwq: {},
                activeIndex: '1',
                activeIndex2: '1'
            };
        },
    }
})