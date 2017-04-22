package cn.hylstudio.tomcat.experiment2.dao;


import cn.hylstudio.tomcat.experiment2.bean.Good;

import java.util.List;

/**
 * Created by HYL on 2016/5/2.
 */
public interface GoodDao {
    /**
     * 获得所有Person
     * @return 所有Person的列表
     */
    List<Good> getGoods();

    /**
     *增加一个Person
     * @param good 要增加的person
     * @return 成功返回true否则返回false
     */
    boolean addGood(Good good);

    /**
     * 删除指定的Person
     * @param id 要删除的person的id
     * @return 成功返回true否则返回false
     */
    boolean delGood(int id);

    /**
     * 删除指定的Person
     * @param goodsId 要删除的person的ID列表
     * @return 成功返回true否则返回false
     */
    boolean delGoods(String[] goodsId);

    /**
     * 更新列表中person的信息
     * @param good 要更新的person以及信息，根据id
     * @return 成功返回true否则返回false
     */
    boolean updateGood(Good good);
}
