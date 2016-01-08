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
<%--<input type="button" value="保存并选取新线路" onclick="jm.view.button_test()"/>--%>
<%--<input type="button" value="提交线路" onclick=""/>--%>
<%--<div class="btn-group" role="group" aria-label="..." text-align="center">--%>
    <%--<button type="button" class="btn btn-default">Left</button>--%>
    <%--<button type="button" class="btn btn-default">Middle</button>--%>
    <%--<button type="button" class="btn btn-default">Right</button>--%>
<%--</div>--%>
<button type="button" class="btn btn-primary btn-lg btn-block">保存并选取新线路</button>
<button type="button" class="btn btn-primary btn-lg btn-block">提交线路</button>
</body>
</html>
