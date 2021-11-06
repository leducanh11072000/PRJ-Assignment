
package model;
public class WareHouse {
    private  int id;
    private String cate;
    private String name;
    private int number;

    public WareHouse() {
    }

    public WareHouse(int id, String cate, String name, int number) {
        this.id = id;
        this.cate = cate;
        this.name = name;
        this.number = number;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Ware{" + "id=" + id + ", cate=" + cate + ", name=" + name + ", number=" + number + '}';
    }
    
    
    
}
