package cn.hylstudio.tomcat.experiment2.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by HYL on 2016/5/1.
 */
public class Util {
    public static void redirect(String file, HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher(file).forward(req, res);
    }

    public static Properties getDbConf() {
        Util util = new Util();
        return util._getDbConf();
    }

    private Properties _getDbConf() {
        Properties ret = new Properties();
        try {
            ret.load(getClass().getResourceAsStream("/config.properties"));
        } catch (IOException e) {
            System.out.println("配置文件加载失败");
            e.printStackTrace();
        }
        return ret;
    }
}
