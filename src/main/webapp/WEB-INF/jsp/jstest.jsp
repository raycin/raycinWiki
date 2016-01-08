<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>jstest</title>
    <link type="text/css" rel="stylesheet" href="../style/jsmind.css" />
    <script type="text/javascript" src="../script/jsmind.js"></script>
</head>
<body>
<div id="jsmind_container"></div>
<script type="text/javascript">
    var mind = {
        // 3 data format supported ...
        // see Documents for more information
        meta:{
            name:'mind',
            author:'while.for@me.com',
            version:'1.0'
        },
        format:'node_tree',
        data:${data}
    };
    var options = {
        container:'jsmind_container',
        editable:false,
        theme:'orange'
    };
    var jm = new jsMind(options);
    jm.show(mind);
</script>
<input type="button" value="保存并选取新线路" onclick="jm.view.button_test()"/>
<input type="button" value="提交线路" onclick=""/>
</body>
</html>
