/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
public class Goods {

    private Category category;
    private int seri;
    private Bill bills;
    private String ColorCode;
    private int number;
    private int price;
   

    public Goods() {
    }

    public Goods(Category category, int seri, Bill bills, String ColorCode, int number, int price) {
        this.category = category;
        this.seri = seri;
        this.bills = bills;
        this.ColorCode = ColorCode;
        this.number = number;
        this.price = price;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getSeri() {
        return seri;
    }

    public void setSeri(int seri) {
        this.seri = seri;
    }

    public Bill getBills() {
        return bills;
    }

    public void setBills(Bill bills) {
        this.bills = bills;
    }

    public String getColorCode() {
        return ColorCode;
    }

    public void setColorCode(String ColorCode) {
        this.ColorCode = ColorCode;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    
}
