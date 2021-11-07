/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
public class Bill {

    private int id;
    private Date date;
    private Supplier supplier;
    private int amountPaid;
    private int total;
    private int payed;
  

    public Bill() {
    }

    public Bill(int id, Date date, Supplier supplier, int amountPaid, int total, int payed,int owes) {
        this.id = id;
        this.date = date;
        this.supplier = supplier;
        this.amountPaid = amountPaid;
        this.total = total;
        this.payed = payed;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public int getAmountPaid() {
        return amountPaid;
    }

    public void setAmountPaid(int amountPaid) {
        this.amountPaid = amountPaid;
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

    @Override
    public String toString() {
        return "Bill{" + "id=" + id + ", date=" + date + ", supplier=" + supplier + ", amountPaid=" + amountPaid + ", total=" + total + ", payed=" + payed + '}';
    }

    

    

   
    
    
}
