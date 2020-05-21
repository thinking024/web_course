<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.LinkedHashSet" %><%--
  Created by IntelliJ IDEA.
  User: 26438
  Date: 2020/5/21
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String account = (String) session.getAttribute("account");
  if (account == null) {
      response.sendRedirect("login.jsp");
  } else {
      out.println("<div>欢迎"+account+"登录，您已经选购的商品有：</div><br/>");
  }
  // 获取session中存放的商品信息
  LinkedHashSet set = (LinkedHashSet) session.getAttribute("goods");
  if (set == null) { // session中无商品信息，新建一个set集合，存在session中
      set = new LinkedHashSet();
      session.setAttribute("goods",set);
  }

  // 将多选框提交的的商品信息存放在set集合中
  if (request.getParameter("goods") != null) {
      for (String good : request.getParameterValues("goods")) {
        set.add(good);
      }
  }

  // 获取本页面提交的要删除的商品信息
  if (request.getParameter("delete") != null) {
    for (String delete : request.getParameterValues("delete")) {
      set.remove(delete); // 移除商品
    }
  }

  //  输出由商品组成的表单，点击删除按钮后跳转回本购物车页面
  out.println("<form action=\"shoppingCart.jsp\" method=\"post\">");
  for (Object object : set) { // 遍历set集合中的商品
    out.println("<input type=\"checkbox\" name=\"delete\" value="+object+">"+object+"</input>");
  }
  out.println("<input type=\"submit\" value=\"从购物车中移除选中的商品\"/>");
  out.println("</form>");
%>
<html>
<head>
  <title>购物车</title>
</head>
<body>
  <a href="main.jsp">回到商品页面继续选购</a>
</body>
</html>
