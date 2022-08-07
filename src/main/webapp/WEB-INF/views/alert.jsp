<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-07-13
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>alertpage</title>
</head>
<body>
<script type="text/javascript">
    var message="${msg}";
    var url="${url}";
    alert(message);
    document.location.href=url;
</script>
</body>
</html>
