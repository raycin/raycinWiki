<%@ page contentType="text/html; charset=UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>线路展示</title>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/style/pnotify.core.css" />
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/style/jsmind.css" />
    <script type="text/javascript" src="<%=basePath%>/script/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/pnotify.core.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jsmind.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jsmind.screenshot.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/style/bootstrap.min.css"/>
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
<nav>
    <ul class="pager">
        <li><a href="#" onclick="jm.shoot()">导出图片</a></li>
    </ul>
</nav>
</body>
</html>
