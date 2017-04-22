<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HYL
--%>

<%@include file="../include/header.jsp" %>
<script src="<c:url value="/js/products.js"/>" type="text/javascript"></script>

<div class="container">
    <div class="row">
        <form action="<c:url value="/products"/>" method="post" id="form1" name="form1">
            <input type="hidden" name="action" value="del" id="action"/>
            <div class="col-md-1"></div>
            <div class="col-md-10 col-xs-12">
                <div class="panel panel-info">

                    <div class="panel-heading">
                        <h3 class="panel-title">产品管理</h3>
                    </div>
                    <div class="panel-body">

                        <row>
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal">
                                添加
                            </button>

                            <button class="btn btn-default" onclick="check();" type="button">删除
                            </button>
                            <button type="button" class="btn btn-default" onclick="getEditProduct();">
                                编辑
                            </button>
                            <a href="<c:url value="/products"/>">
                                <button class="btn btn-default" type="button">刷新
                                </button>
                            </a>
                            <form class="form-search">
                                <label class="control-label">按名称查找:</label>
                                <input class="input-medium search-query" type="text" id="searchName"/>
                                <button type="button" onclick="search()" class="btn btn-default">查找</button>
                            </form>
                        </row>
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
                                            <input type="checkbox" name="products" id="${good.id}" value="${good.id}"/>
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
        </form>
    </div>
</div>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="addModalLabel">添加产品</h4>
            </div>
            <form action="<c:url value="/products"/>" method="post">
                <div class="modal-body">
                    <input type="hidden" name="action" value="add"/>
                    <div class="form-group">
                        <label class="control-label">名称:</label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="form-group">
                        <label class="control-label">库存:</label>
                        <input type="text" class="form-control" name="amount">
                    </div>
                    <div class="form-group">
                        <label class="control-label">备注:</label>
                        <textarea class="form-control" name="note"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="editModalLabel">编辑产品</h4>
            </div>
            <form action="<c:url value="/products"/>" method="post">
                <div class="modal-body">
                    <input type="hidden" name="action" value="edit"/>
                    <input type="hidden" id="editId" name="editId" value=""/>
                    <div class="form-group">
                        <label class="control-label">名称:</label>
                        <input type="text" class="form-control" id="editName" name="name">
                    </div>
                    <div class="form-group">
                        <label class="control-label">库存:</label>
                        <input type="text" class="form-control" id="editAmount" name="amount">
                    </div>
                    <div class="form-group">
                        <label class="control-label">备注:</label>
                        <textarea class="form-control" id="editNote" name="note"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">保存</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp" %>
