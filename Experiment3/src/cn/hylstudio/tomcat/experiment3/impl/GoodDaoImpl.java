package cn.hylstudio.tomcat.experiment2.impl;

import cn.hylstudio.tomcat.experiment2.bean.Good;
import cn.hylstudio.tomcat.experiment2.dao.GoodDao;
import cn.hylstudio.tomcat.experiment2.util.DBUtil;
import cn.hylstudio.tomcat.experiment2.util.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by HYL.
 */
public class GoodDaoImpl implements GoodDao {
    public GoodDaoImpl() {
    }

    @Override
    public List<Good> getGoods() {
        List<Good> ret = new ArrayList<>();
        DBUtil db = new DBUtil();
        Connection conn = db.connect(Util.getDbConf());
        String sql = "select * from t_products";
        PreparedStatement stmt = null;
        ResultSet res = null;
        try {
            stmt = conn.prepareStatement(sql);
            res = stmt.executeQuery();
            while (res.next()) {
                String name = res.getString("name");
                String note = res.getString("note");
                int id = res.getInt("id");
                int age = res.getInt("amount");

                Good good = new Good();
                good.setId(id);
                good.setName(name);
                good.setAmount(age);
                good.setNote(note);
                ret.add(good);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ret;
    }

    @Override
    public boolean addGood(Good good) {
        DBUtil db = new DBUtil();
        Connection conn = db.connect(Util.getDbConf());
        String sql = "insert into t_products(name,amount,note) values(?,?,?)";
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, good.getName());
            stmt.setInt(2, good.getAmount());
            stmt.setString(3, good.getNote());
            stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public boolean delGood(int id) {
        boolean ret = false;
        DBUtil db = new DBUtil();
        Connection conn = db.connect(Util.getDbConf());
        String sql = "delete from t_products where id = ?";
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ret = stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ret;
    }

    @Override
    public boolean delGoods(String[] goodsId) {
        try {
            for (String id : goodsId) {
                delGood(Integer.parseInt(id));
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public boolean updateGood(Good good) {
        boolean ret = false;
        DBUtil db = new DBUtil();
        Connection conn = db.connect(Util.getDbConf());
        String sql = "update t_products set name = ?, " +
                "amount = ?,note=? where id = ?";
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, good.getName());
            stmt.setInt(2, good.getAmount());
            stmt.setString(3, good.getNote());
            stmt.setInt(4, good.getId());
            ret = stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ret;
    }
}
