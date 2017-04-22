package cn.hylstudio.tomcat.experiment2.servlet;

import cn.hylstudio.tomcat.experiment2.bean.User;
import cn.hylstudio.tomcat.experiment2.dao.LoginDao;
import cn.hylstudio.tomcat.experiment2.impl.LoginDaoImpl;
import cn.hylstudio.tomcat.experiment2.util.Util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by HYL on 2016/10/17.
 */
public class LoginServlet extends HttpServlet {
    private LoginDao loginDao = new LoginDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username != null && password != null &&
                !username.equals("") && !password.equals("")) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            if (loginDao.canLogin(user)) {
                request.getSession().setAttribute("isLogin", "1");
                response.sendRedirect("products");
            } else {
                Util.redirect("/login.jsp", request, response);
            }
        }
    }
}
