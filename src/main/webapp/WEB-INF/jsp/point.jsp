<%@ page contentType="text/html; charset=utf-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>聚龙链演示平台</title>
</head>
<body >
<script type="text/javascript">
    function check() {
        var name = document.getElementsByTagName("input");
        for (var i = 0; i < name.length; i++) {
            if (name[i].value === null||name[i].value ==="") {
                alert('输入不能为空');
                return false
            }
        }
        document.baseForm.submit();
    }
</script>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<div style="width: inherit;height: 980px;">
    <div style="margin-left:41.5%;margin-right:43.5%; margin-top: 12%">
    <div  class="move">
        <h1><a href="/sc/jump" style="color:gold;text-decoration:none;">聚龙链演示平台</a></h1>
        <form action="/sc/point" name="baseForm" style="color: white">
            Node节点地址：<input type="text" placeholder="当前：${point.nodeHost}" name="nodeHost" ><br><br>
            Node端口：<input type="text" placeholder="当前：${point.nodePort}" name="nodePort" ><br><br>
            Consenter节点地址：<input type="text" placeholder="当前：${point.consenterHost}" name="consenterHost" ><br><br>
            Consenter端口：<input type="text" placeholder="当前：${point.consenterPort}" name="consenterPort" ><br><br>
            <button type="submit" class="btn btn-primary btn-block btn-large" onclick="return check()">
                确定
            </button>

        </form>

    </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>