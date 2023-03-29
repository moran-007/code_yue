// 父窗口中 - 初始化Messenger对象
// 推荐指定项目名称, 避免Mashup类应用中, 多个开发商之间的冲突
var messenger = new Messenger('Parent', 'projectName');​
// iframe中 - 初始化Messenger对象
// 注意! Messenger之间必须保持项目名称一致, 否则无法匹配通信
var messenger = new Messenger('iframe1', 'projectName');​
// 多个iframe, 使用不同的名字
var messenger = new Messenger('iframe2', 'projectName');
messenger.listen(function(msg) {
    alert("收到消息: " + msg);
}); // 父窗口中 - 添加消息对象, 明确告诉父窗口iframe的window引用与名字
messenger.addTarget(iframe1.contentWindow, 'iframe1');​
// 父窗口中 - 可以添加多个消息对象
messenger.addTarget(iframe2.contentWindow, 'iframe2'); // 父窗口中 - 向单个iframe发消息
messenger.targets['iframe1'].send(msg1);
messenger.targets['iframe2'].send(msg2);
// 父窗口中 - 向所有目标iframe广播消息
messenger.send(msg);