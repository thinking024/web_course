<%--
  Created by IntelliJ IDEA.
  User: 26438
  Date: 2020/5/18
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>网上答题系统</title>
  </head>
  <body>
    <form action="answer.jsp" method="post">
      <div>一、2+3=？</div>
      <input type="radio" name="question1" value="2">2</input>
      <input type="radio" name="question1" value="3">3</input>
      <input type="radio" name="question1" value="4">4</input>
      <input type="radio" name="question1" value="5">5</input>

      <div>二、下列哪些是偶数？</div>
      <input type="checkbox" name="question2" value="2">2</input>
      <input type="checkbox" name="question2" value="3">3</input>
      <input type="checkbox" name="question2" value="4">4</input>
      <input type="checkbox" name="question2" value="5">5</input>

      <div>三、下列哪些是动态网页？（windows：按住 Ctrl 按钮来点击选择多个选项；Mac：按住 command 按钮来点击选择多个选项）</div>
      <select multiple="multiple" size="4" name="question3">
        <option value="asp">asp</option>
        <option value="php">php</option>
        <option value="html">html</option>
        <option value="jsp">jsp</option>
      </select>

      <div>四、下列组件哪个是服务器端的？</div>
      <select name="question4">
        <option value="jsp">jsp</option>
        <option value="servlet">servlet</option>
        <option value="javabean">javabean</option>
      </select>

      <div>
        <span>五、在服务器端用来接受用户请求的对象是：</span>
        <input type="text" name="question5" />
      </div>

      <div>
        <input type="submit" value="提交" />
        <input type="reset" value="重置">
      </div>
    </form>
  </body>
</html>
