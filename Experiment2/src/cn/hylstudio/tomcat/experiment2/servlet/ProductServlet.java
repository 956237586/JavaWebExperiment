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
 * Created by HYL .
 */
public class ProductServlet extends HttpServlet {
    private HttpServletRequest request;
    private HttpServletResponse response;
    private GoodDao goodDaoImpl;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.request = request;
        this.response = response;
        this.goodDaoImpl = new GoodDaoImpl();
        String action = request.getParameter("action");
        if (action == null || action.equals("")) {
        } else if (action.equals("add")) {
            add(); //增加
        } else if (action.equals("edit")) {
            edit();//编辑
        } else if (action.equals("del")) {
            del(); //删除
        }
        List<Good> l = null;
        l = goodDaoImpl.getGoods();
        request.setAttribute("products", l);
        Util.redirect("/product/product.jsp", request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    private void add() {
        Good good = new Good();
        good.setName(request.getParameter("name"));
        good.setAmount(Integer.parseInt(request.getParameter("amount")));
        good.setNote(request.getParameter("note"));
        goodDaoImpl.addGood(good);

//        System.out.println(request.getParameter("name"));
//        System.out.println(Integer.parseInt(request.getParameter("amount")));
//        System.out.println(request.getParameter("note"));
    }

    private void edit() {
        Good good = new Good();
        good.setId(Integer.parseInt(request.getParameter("editId")));
        good.setName(request.getParameter("name"));
        good.setAmount(Integer.parseInt(request.getParameter("amount")));
        good.setNote(request.getParameter("note"));
        goodDaoImpl.updateGood(good);

//        System.out.println(Integer.parseInt(request.getParameter("editId")));
//        System.out.println(request.getParameter("name"));
//        System.out.println(Integer.parseInt(request.getParameter("amount")));
//        System.out.println(request.getParameter("note"));

    }

    private void del() {
        String[] products = request.getParameterValues("products");
        goodDaoImpl.delGoods(products);

        for (String a : products) {
            System.out.println(a);
        }
    }

}
