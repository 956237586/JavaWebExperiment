<%--
  Created by IntelliJ IDEA.
  User: HYL
--%>
<%@ include file="./include/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div style="text-align: center;">
                        <h3 class="panel-title">登录</h3>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-signin" action="login" method="post">
                        <label for="inputUsername" class="sr-only">用户名</label>
                        <input type="text" name="username" id="inputUsername" class="form-control"
                               placeholder="请输入用户名" required="" autofocus=""
                               value="hyl"/>
                        <label for="inputPassword" class="sr-only">密码</label>
                        <br/>
                        <input type="password" name="password" id="inputPassword" class="form-control"
                               placeholder="请输入密码" required=""
                               value="2014011311"/>
                        <br/>
                        <button class="btn btn-lg btn-info btn-block" type="submit">登录</button>
                        <button class="btn btn-lg btn-info btn-block" type="button" onclick="javascript:history.go(-1);">返回</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>

<%@ include file="./include/footer.jsp" %>
