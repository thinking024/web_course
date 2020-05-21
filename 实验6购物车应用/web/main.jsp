<%--
  Created by IntelliJ IDEA.
  User: 26438
  Date: 2020/5/21
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String account = (String) session.getAttribute("account");
  if (account == null) { // session中无用户信息
      String username = request.getParameter("username");
      if (username != null) { // 第一次登录，存储用户信息
          session.setAttribute("account",username);
          out.println("欢迎  "+username+"  登录，请选择您的商品");
      } else { // 未登录，跳转到登录页面
          response.sendRedirect("login.jsp");
      }
  } else { // 已登录
      out.println("欢迎  "+account+"  登录，请选择您的商品");
  }
%>
<html>
<head>
  <title>商品选购</title>
</head>
<body>
  <form action="shoppingCart.jsp" method="post">
    <input type="checkbox" name="goods" value="tv">tv</input>
    <input type="checkbox" name="goods" value="phone">phone</input>
    <input type="checkbox" name="goods" value="computer">computer</input>
    <input type="checkbox" name="goods" value="book">book</input>
    <input type="submit" value="结算商品"/>
  </form>
</body>
</html>
