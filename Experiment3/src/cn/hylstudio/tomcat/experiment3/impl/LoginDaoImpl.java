package cn.hylstudio.tomcat.experiment2.impl;

import cn.hylstudio.tomcat.experiment2.bean.User;
import cn.hylstudio.tomcat.experiment2.dao.LoginDao;
import cn.hylstudio.tomcat.experiment2.util.DBUtil;
import cn.hylstudio.tomcat.experiment2.util.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by HYL on 2016/10/17.
 */
public class LoginDaoImpl implements LoginDao {
    @Override
    public boolean canLogin(User user) {
        boolean ret = false;
        DBUtil db = new DBUtil();
        Connection conn = db.connect(Util.getDbConf());
        String sql = "select count(*) from t_users where username = ? and password = ?";
        PreparedStatement stmt = null;
        ResultSet res = null;
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            res = stmt.executeQuery();
            res.next();
            ret = res.getInt(1) == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ret;
    }
}
