/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
public class Provider {
    private int id;
    private String name;
    private String address;
    private String number;
    private String email;

    public Provider() {
    }

    public Provider(int id, String name, String address, String number, String email) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.number = number;
        this.email = email;
    }

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Provider{" + "id=" + id + ", name=" + name + ", address=" + address + ", number=" + number + ", email=" + email + '}';
    }

    
   
    
}
