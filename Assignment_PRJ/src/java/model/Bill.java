/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
public class Bill {

    private String id;
    private Date date;
    private Supplier provider;
    private int amountPaid;
    private int total;
    private int payed;
  

    public Bill() {
    }

    public Bill(String id, Date date, Supplier provider, int amountPaid, int total, int payed) {
        this.id = id;
        this.date = date;
        this.provider = provider;
        this.amountPaid = amountPaid;
        this.total = total;
        this.payed = payed;
    }

   
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

   

//    public int getOwed() {
//        return owed;
//    }

    

    public Supplier getProvider() {
        return provider;
    }

    public void setProvider(Supplier provider) {
        this.provider = provider;
    }

    @Override
    public String toString() {
        return "Bill{" + "id=" + id + ", date=" + date + ", provider=" + provider + ", amountPaid=" + amountPaid + ", total=" + total + ", payed=" + payed + '}';
    }

    
}
