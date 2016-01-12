<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>jstest</title>
    <link type="text/css" rel="stylesheet" href="../style/jsmind.css" />
    <script type="text/javascript" src="../script/jsmind.js"></script>
    <link type="text/css" rel="stylesheet" href="../style/bootstrap.min.css"/>
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
        data:${lines}
    };
    var options = {
        container:'jsmind_container',
        editable:false,
        theme:'orange',
        not_event:true,
    };
    var jm = new jsMind(options);
    jm.show(mind);
</script>
</body>
</html>
