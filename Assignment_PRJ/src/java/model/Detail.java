/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
public class Detail {

    private Category category;
    private String seri;
    private Bill bills;
    private String colorCode;
    private String unit;
    private int quantity;
    private int price;
   

    public Detail() {
    }

    public Detail(Category category, String seri, Bill bills, String colorCode, String unit, int quantity, int price) {
        this.category = category;
        this.seri = seri;
        this.bills = bills;
        this.colorCode = colorCode;
        this.unit = unit;
        this.quantity = quantity;
        this.price = price;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getSeri() {
        return seri;
    }

    public void setSeri(String seri) {
        this.seri = seri;
    }

    public Bill getBills() {
        return bills;
    }

    public void setBills(Bill bills) {
        this.bills = bills;
    }

    public String getColorCode() {
        return colorCode;
    }

    public void setColorCode(String colorCode) {
        this.colorCode = colorCode;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    public int getTotal(){
    return price*quantity;
    }
    
    
}
