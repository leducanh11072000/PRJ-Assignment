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
    private int cusOwes;
    private int cusPays;
   

    public Customer() {
    }

    public Customer(String id, String name, String phone, int cusOwes, int cusPays) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.cusOwes = cusOwes;
        this.cusPays = cusPays;
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

    public int getCusOwes() {
        return cusOwes;
    }

    public void setCusOwes(int cusOwes) {
        this.cusOwes = cusOwes;
    }

    public int getCusPays() {
        return cusPays;
    }

    public void setCusPays(int cusPays) {
        this.cusPays = cusPays;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", name=" + name + ", phone=" + phone + ", cusOwes=" + cusOwes + ", cusPays=" + cusPays + '}';
    }

  
    
    
}
