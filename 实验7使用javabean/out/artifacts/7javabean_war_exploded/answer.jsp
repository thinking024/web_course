<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="number" class="bean.Number" scope="session" />

<html>
<head>
  <title>answer</title>
</head>
<body>

<%
  // 每次进入答案页面时，猜测次数都会+1。
  number.setGuessCount(number.getGuessCount() + 1);
  //获取提交的答案
  String guess = request.getParameter("guess");
  int guessNumber = -1;
  if (guess.isEmpty()) { // 没有提交答案，赋值为下划线，便于后续判断
      guess = "_____";
  } else { // 提交了答案，获取为int类型
      guessNumber = Integer.valueOf(guess);
  }
%>
  <div>你猜测的答案是：<%=guess%></div>
  <div>你已经猜了<jsp:getProperty name="number" property="guessCount" />次</div>
  <%
    if (guessNumber == number.getAnswer()) {
  %>
    <p>恭喜你，猜对了！</p>
  <%
    } else {
  %>
  <%
    if ("_____".equals(guess)) { // guess为获取的String类型的答案参数
        out.println("<div>你没有提交数字！</div>");
    } else if (guessNumber > number.getAnswer()) { // guessNumber为提交的答案
        out.println("<div>你猜的太大了！</div>");
    } else if (guessNumber < number.getAnswer()) {
        out.println("<div>你猜的太小了！</div>");
    }
  %>
    <%--再次提交到本页面--%>
    <form action="answer.jsp">
      <div>请再猜一次</div>
      <input type="number" name="guess" min="0" max="100">
      <input type="submit" value="提交">
    </form>
  <%
    }
  %>

  <a href="guess.jsp">重新开始猜数（重新开始后正确答案将会再次随机生成）</a>
</body>
</html>