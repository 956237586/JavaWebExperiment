<%--
  User: HYL
  Date: 2016/9/26
  Time: 12:32
--%>
<%@include file="include/header.jsp" %>
<%

    boolean isValid = false;
    String username = session.getAttribute("loginUserName") + "";
    if (username != null && !username.equals("null")) {
        isValid = true;
    } else {
        username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username != null && !username.equals("") &&
                password != null && !password.equals("")) {
            if (username.trim().equals("hyl") && password.trim().equals("2014011311")) {
                isValid = true;
                session.setAttribute("loginUserName", username);
                session.setAttribute("loginUserId", password);
            }
        }
    }

%>
<div class="container">
    <% if (isValid) { %>

    <div class="alert alert-success alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">X</span>
        </button>
        <div>欢迎<%=session.getAttribute("loginUserName")%>，下面是您需要回答的题目</div>
    </div>

    <%@include file="include/questions.jsp" %>

    <% } else { %>

    <div class="alert alert-danger alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">X</span>
        </button>
        <div>您尚未登陆或登陆未成功！请重试!!5秒后回到登陆界面</div>
        <script>setTimeout("location.href='index.jsp';", 5000);</script>
    </div>

    <% } %>
</div>
<%@include file="include/footer.jsp" %>
