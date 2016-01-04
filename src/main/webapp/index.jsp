<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>wiki登陆</title>
    <link type="text/css" rel="stylesheet" href="style/bootstrap.min.css"/>
    <script type="text/javascript" src="script/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="script/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="margin-top:100px">
    <form action="/login" method="post" class="well" style="width:220px;margin:0px auto;">
        <h3>wiki登陆</h3>
        <%
            String code = request.getParameter("code");
            if (code != null && "10001".equals(code)) {
        %>
        <div style="color:red;font-size:18px">用户名或密码错误</div>
        <%} else if (code != null && "10002".equals(code)) { %>
        <div style="color:red;font-size:18px">请输入用户名或密码</div>
        <%} else if (code != null && "10005".equals(code)) {%>
        <div style="color:red;font-size:18px">请先登录</div>
        <%} %>
        <label>用户名:</label>
        <input type="text" name="username" style="height:30px" class="span3"/>
        <label>密码：</label>
        <input type="password" name="password" style="height:30px" class="span3">
        <button type="submit" class="btn btn-primary">登陆系统</button>
    </form>
</div>
</body>
</html>
