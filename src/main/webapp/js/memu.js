new Vue({
    el: '.test',


    methods: {


        handleOpen(key, keyPath) {
            console.log(key, keyPath);
        },
        handleClose(key, keyPath) {
            console.log(key, keyPath);
        },
        switchMenu() {
            let _this = this
            if (_this.switchMu == "open") {
                // _this.isCollapse = true;
                _this.switchMu = "close"
                document.getElementById("left").style.display = 'none'
            } else if (_this.switchMu == "close") {
                // _this.isCollapse = false;
                _this.switchMu = "open"
                document.getElementById("left").style.display = ''

            }


        },
        // 退出
        exitSelf() {
            this.$confirm('此操作将退出您的登录状态, 是否继续?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {
                this.$message({
                    type: 'success',
                    message: '退出成功!',
                });

                window.setTimeout(function() {
                        top.window.location.href = "http://localhost:8866/code2";
                    }, 800)
                    // location.href = "../index.html"
            }).catch(() => {
                this.$message({
                    type: 'info',
                    message: '已取消'
                });
            });
        },
        addTab(targetName) {
            let newTabName = ++this.tabIndex + '';
            this.editableTabs.push({
                title: 'New Tab',
                name: newTabName,
                content: 'New Tab content'
            });
            this.editableTabsValue = newTabName;
        },
        removeTab(targetName) {
            let tabs = this.editableTabs;
            let activeName = this.editableTabsValue;
            if (activeName === targetName) {
                tabs.forEach((tab, index) => {
                    if (tab.name === targetName) {
                        let nextTab = tabs[index + 1] || tabs[index - 1];
                        if (nextTab) {
                            activeName = nextTab.name;
                        }
                    }
                });
            }

            this.editableTabsValue = activeName;
            this.editableTabs = tabs.filter(tab => tab.name !== targetName);
        }
    },
    data() {
        return {
            isCollapse: false,
            switchMu: "open",
            circleUrl: "https://www.bsnlch.xyz/Love/img/you%20(8).jpeg",
            // squareUrl: "https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png",
            sizeList: ["small"],

            editableTabsValue: '2',
            editableTabs: [{
                title: 'Tab 1',
                name: '1',
                content: 'Tab 1 content'
            }, {
                title: 'Tab 2',
                name: '2',
                content: 'Tab 2 content'
            }],
            tabIndex: 2
        }

    },
})