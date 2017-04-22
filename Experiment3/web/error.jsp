<%--
  Created by IntelliJ IDEA.
  User: HYL
--%>
<%@ include file="./include/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <div style="text-align: center;">
                        <h3 class="panel-title">错误</h3>
                    </div>
                </div>
                <div class="panel-body">
                    <h2>您尚未登录~~3s后将回到登录界面！</h2>
                </div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<script>setTimeout("location.href = './';", 3000);</script>
<%@ include file="./include/footer.jsp" %>
