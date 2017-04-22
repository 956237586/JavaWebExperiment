<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HYL
--%>

<%@include file="./include/header.jsp" %>
<script src="<c:url value="/js/products.js"/>" type="text/javascript"></script>
<div class="container">
    <div class="row">
            <input type="hidden" name="action" value="del" id="action"/>
            <div class="col-md-1"></div>
            <div class="col-md-10 col-xs-12">
                <div class="panel panel-info">

                    <div class="panel-heading" >
                        <h3 class="panel-title" style="display:inline">产品列表</h3>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="\login.jsp" class="panel-title" style="display:inline;">管理员登录</a>
                    </div>
                    <div class="panel-body">

                        <row>
                            <form style="margin:0px;display:inline" action="index" method="post">
                                <input type="submit" value="刷新" class="btn btn-default"  />
                            </form>
                            <form class="form-search" style="margin:0px;display:inline">
                                <label class="control-label">按名称查找:</label>
                                <input class="input-medium search-query" type="text" id="searchName"/>
                                <button type="button" onclick="javascript:search();" class="btn btn-default">查找</button>
                            </form>
                        </row>
                        <div>&nbsp;</div>
                        <row>
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    
                                    <td>序号</td>
                                    <td>名称</td>
                                    <td>库存</td>
                                    <td>备注</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${products}" var="good" varStatus="status">
                                    <tr>
                                        <td>
                                            <input type="hidden" name="products" id="${good.id}" value="${good.id}"/>
                                            <label for="${good.id}">${status.index + 1}</label>
                                        </td>
                                        <td id="name_${good.id}">${good.name}</td>
                                        <td id="amount_${good.id}">${good.amount}</td>
                                        <td id="note_${good.id}">${good.note}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </row>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
    </div>
</div>
<%@include file="./include/footer.jsp" %>
