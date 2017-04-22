package cn.hylstudio.tomcat.experiment2.filter;


import cn.hylstudio.tomcat.experiment2.util.Util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by HYL on 2016/2/12.
 */
@WebFilter(filterName = "DecodeFilter")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        String isLogin = request.getSession().getAttribute("isLogin") + "";
        if (isLogin.equals("1")) {
            chain.doFilter(req, resp);
        } else {
            Util.redirect("error.jsp", request, response);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
