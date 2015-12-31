<html>
<head>
    <title>jstest</title>
    <link type="text/css" rel="stylesheet" href="style/jsmind.css" />
    <script type="text/javascript" src="script/jsmind.js"></script>
</head>
<body>
<div id="jsmind_container"></div>

<script type="text/javascript">
    var mind = {
        // 3 data format supported ...
        // see Documents for more information
        meta:{
            name:'demo',
            author:'hizzgdev@163.com',
            version:'0.2'
        },
        format:'node_array',
        data:[
            {"id":"root", "isroot":true, "topic":"jsMind"},

            {"id":"sub1", "parentid":"root", "topic":"sub1"},
            {"id":"sub11", "parentid":"sub1", "topic":"sub11"},
            {"id":"sub12", "parentid":"sub1", "topic":"sub12"},
            {"id":"sub13", "parentid":"sub1", "topic":"sub13"},

            {"id":"sub2", "parentid":"root", "topic":"sub2"},
            {"id":"sub21", "parentid":"sub2", "topic":"sub21"},
            {"id":"sub22", "parentid":"sub2", "topic":"sub22"},

            {"id":"sub3", "parentid":"root", "topic":"sub3"},
        ]
    };
    var options = {
        container:'jsmind_container',
        editable:false,
        theme:'orange'
    };
    var jm = new jsMind(options);
    jm.show(mind);
</script>
</body>

</html>
