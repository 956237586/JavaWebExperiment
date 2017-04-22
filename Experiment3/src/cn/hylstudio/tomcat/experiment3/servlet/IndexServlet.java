package cn.hylstudio.tomcat.experiment2.servlet;

import cn.hylstudio.tomcat.experiment2.bean.Good;
import cn.hylstudio.tomcat.experiment2.dao.GoodDao;
import cn.hylstudio.tomcat.experiment2.impl.GoodDaoImpl;
import cn.hylstudio.tomcat.experiment2.util.Util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
/**
 * Created by SXC on 2016/11/6.
 */
public class IndexServlet extends HttpServlet {
    private HttpServletRequest request;
    private HttpServletResponse response;
    private GoodDao goodDaoImpl;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.request = request;
        this.response = response;
        this.goodDaoImpl = new GoodDaoImpl();
        List<Good> l = null;
        l = goodDaoImpl.getGoods();
        request.setAttribute("products", l);
        Util.redirect("/index.jsp", request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


}
