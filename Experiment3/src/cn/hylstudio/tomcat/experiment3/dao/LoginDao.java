package cn.hylstudio.tomcat.experiment2.dao;

import cn.hylstudio.tomcat.experiment2.bean.User;

/**
 * Created by HYL on 2016/10/17.
 */
public interface LoginDao {
    boolean canLogin(User user);
}
