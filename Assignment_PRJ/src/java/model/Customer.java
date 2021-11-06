/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
public class Customer {
    private String id;
    private String name;
    private String phone;
    private int total;
    private int payed;
    private int owes;
    public Customer() {
    }

    public Customer(String id, String name, String phone, int Total, int payed, int owes) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.total = total;
        this.payed = payed;
        this.owes = owes;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPayed() {
        return payed;
    }

    public void setPayed(int payed) {
        this.payed = payed;
    }

    public int getOwes() {
        return owes;
    }

    public void setOwes(int owes) {
        this.owes = owes;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", name=" + name + ", phone=" + phone + ", Total=" + total + ", Payed=" + payed + ", Owes=" + owes + '}';
    }

 
  
    
    
}
