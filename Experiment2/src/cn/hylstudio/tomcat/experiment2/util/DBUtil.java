package cn.hylstudio.tomcat.experiment2.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 数据库工具
 * Created by HYL on 2016/2/10.
 */
public class DBUtil {
    private Connection conn;

    public DBUtil() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("驱动加载失败！请检查库文件是否存在！");
            e.printStackTrace();
        }
    }

    public Connection connect(Properties dbConf) {
        Connection conn;
        String hostname = dbConf.getProperty("hostname");
        String dbName = dbConf.getProperty("dbname");
        String username = dbConf.getProperty("username");
        String password = dbConf.getProperty("password");
        conn = connect(hostname, dbName, username, password);
        return conn;
    }

    /**
     * 连接数据库，默认3306端口
     *
     * @param hostname 域名
     * @param dbName   数据库名
     * @param username 用户名
     * @param password 密码
     * @return 连接信息
     */
    public Connection connect(String hostname, String dbName, String username, String password) {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://" + hostname + ":3306/" + dbName + "?characterEncoding=utf8", username, password);
        } catch (SQLException e) {
            System.out.println("数据库连接失败，请检查配置！");
            e.printStackTrace();
        }
        return conn;
    }

    public boolean close() {
        try {
            conn.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
