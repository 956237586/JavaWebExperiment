<%--
  User: HYL
  Date: 2016/9/26
  Time: 14:38
--%>
<%@include file="include/header.jsp" %>
<%
    String username = session.getAttribute("loginUserName") + "";
    if (username == null || username.equals("null")) {
%>
<jsp:forward page="index.jsp"/>
<%  }%>
<%
    boolean isValid = true;
    int score = 0;
    String question1 = request.getParameter("question1");
    if (question1 != null && question1.equals("A")) {
        score += 30;
    }

    String question2 = request.getParameter("question2");
    if (question2 != null && question2.equals("A")) {
        score += 30;
    }

    String[] question3 = request.getParameterValues("question3");
    if (question3 != null && question3.length > 0) {
        for (int i = 0; i < question3.length; i++) {
            if (question3[i].equals("C") || question3[i].equals("D")) {
                score += 20;
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
        <div>你的成绩是<%=score%>
        </div>
        <a href="home.jsp">点这里返回</a>
    </div>
    <%} else {%>
    <%--<jsp:forward page="home.jsp"/>--%>
    <%}%>
</div>
<%@include file="include/footer.jsp" %>