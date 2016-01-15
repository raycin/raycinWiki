<%@ page contentType="text/html; charset=UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>jstest</title>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/style/jsmind.css" />
    <script type="text/javascript" src="<%=basePath%>/script/jsmind.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/style/bootstrap.min.css"/>
</head>
<body>
<form action="/doShow" method="post" class="well" id="lineform">
<input type="hidden" id="lines" name="lines">
<input type="hidden" id="project" name="project">
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
<div id="groups" class="btn-toolbar" role="toolbar" aria-label="..."></div>
<nav>
    <ul class="pager">
        <li><a href="#" onclick="jm.view.button_test()">保存并选取新线路</a></li>
        <li><a href="#" onclick="location.reload() ">清空所选</a></li>
        <li><a href="#" onclick="jm.view.from_submit()">提交线路</a></li>
    </ul>
</nav>
</form>
</body>
</html>
