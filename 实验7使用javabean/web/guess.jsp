<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Random random = new Random();
  int answer = random.nextInt(100) + 1;
  System.out.println(answer);
%>

<jsp:useBean id="number" class="bean.Number" scope="session" />
<%
  number.setAnswer(answer); // 存入正确答案
  number.setGuessCount(0); // 初始化猜测次数为0
%>

<html>
<head>
  <title>guess</title>
</head>
<body>
  <form action="answer.jsp">
    <div>请输入要你猜测的数字x（0<=x<=100）</div>
    <input type="number" name="guess" min="0" max="100">
    <input type="submit" value="提交">
  </form>
</body>
</html>
