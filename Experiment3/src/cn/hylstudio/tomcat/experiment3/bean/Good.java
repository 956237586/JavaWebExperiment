package cn.hylstudio.tomcat.experiment2.bean;

/**
 * Created by HYL on 2016/5/2.
 */
public class Good {
    private int id;
    private String name;//名称
    private int amount; //库存
    private String note;//备注

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
