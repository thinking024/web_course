<%@ page import="java.util.Arrays" %>
<%--
  Created by IntelliJ IDEA.
  User: 26438
  Date: 2020/5/18
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String answer1 = "5".equals(request.getParameter("question1")) ? "正确" : "错误";

  // 将问题2获取的多个值的数组转成字符串，以便判断
  String answer2s = Arrays.toString(request.getParameterValues("question2"));
  String answer2;
  if (answer2s.equals("null") || answer2s.contains("3") || answer2s.contains("5")) {
    answer2 = "错误"; // 含有错误答案3 5 或者提交答案为空
  } else if (answer2s.contains("2") && answer2s.contains("4")) {
    answer2 = "正确"; // 同时含有2个正确答案2 4
  } else {
    answer2 = "不完全正确"; // 只有一个正确答案
  }

  String answer3s = Arrays.toString(request.getParameterValues("question3"));
  String answer3;
  if (answer3s.equals("null") || answer3s.contains("html")) {
    answer3 = "错误";
  } else if (answer3s.contains("asp") && answer3s.contains("jsp") && answer3s.contains("php")) {
    answer3 = "正确";
  } else {
    answer3 = "不完全正确";
  }

  String answer4 = "servlet".equals(request.getParameter("question4")) ? "正确" : "错误";

  String answer5 = "request".equalsIgnoreCase(request.getParameter("question5").trim()) ? "正确" : "错误";

%>
<html>
<head>
  <title>答案</title>
</head>
<body>
  <div>一、解答为：2+3=5  <%=answer1%>！</div>
  <div>----------------------------</div>

  <div>二、解答为：偶数有：2 4  <%=answer2%>！</div>
  <div>----------------------------</div>

  <div>三、解答为：动态网页有：jsp asp php  <%=answer3%>！</div>
  <div>----------------------------</div>

  <div>四、解答为：服务端的组件有：servlet  <%=answer4%>！</div>
  <div>----------------------------</div>

  <div>五、解答为：在服务器端用来接受用户请求的对象是：request  <%=answer5%>！</div>
  <div>----------------------------</div>
</body>
</html>
