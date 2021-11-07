/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;
import model.Category;
import model.Detail;
import model.Supplier;

/**
 *
 * @author 84984
 */
public class BillDBContext extends DBContext{
    public List<Bill> getBills(){
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<Bill> listBill = new ArrayList<>();
        try {
            String query = "SELECT [id]\n"
                    + "      ,[date]\n"
                    + "      ,[supplierid]\n"
                    + "      ,[amountPaid]\n"
                    + "  FROM [dbo].[Bill]";
            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                Bill b = new Bill();
                Supplier p = new Supplier();
                b.setId(rs.getInt("id"));
                b.setSupplier(p);
                b.setDate(rs.getDate("date"));
                p.setName(rs.getString("supplierid"));
                b.setPayed(rs.getInt("amountPaid"));
                listBill.add(b);

               
            }
        } catch (Exception e) {
        }
        return listBill;
    }
    
    public void InserBillDetail(int cateid, String seri, int billid, String colorCode, String unit, int quantity, int price) {
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        String query = "INSERT INTO [dbo].[Detail]\n" +
"           ([categoryid]\n" +
"           ,[seri]\n" +
"           ,[billid]\n" +
"           ,[colorCode]\n" +
"           ,[unit]\n" +
"           ,[quantity]\n" +
"           ,[price])\n" +
"     VALUES\n" +
"           (?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?)";

        try {

            stm = connection.prepareStatement(query);
            stm.setInt(1, cateid);
            stm.setString(2, seri);
            stm.setInt(3, billid);
            stm.setString(4, colorCode);
            stm.setString(5, unit);
            stm.setInt(6, quantity);
            stm.setInt(7, price);
            stm.executeUpdate();
        } catch (Exception e) {
        }

    }
        public List<Bill> getBills2() {
        List<Bill> imporBill = new ArrayList<>();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query = "select table2.id, table2.[date],table2.[name],(table1.total) as total, table2.amountPaid, table1.total - table2.amountPaid as payed \n" +
"from (select billid, sum(price*quantity) as total from Detail\n" +
"group by billid) as table1\n" +
"right join (select i.id, i.date, p.[name], i.amountPaid \n" +
"from Bill i \n" +
"inner join Supplier p on i.supplierid = p.id) as table2 on table1.billid = table2.id";
            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                Bill b = new Bill();
                Supplier p = new Supplier();
                p.setName(rs.getString("name"));
                b.setId(rs.getInt("id"));
                b.setSupplier(p);
                b.setDate(rs.getDate("date"));
                b.setTotal(rs.getInt("total"));
                b.setAmountPaid(rs.getInt("amountPaid"));
                b.setPayed(rs.getInt("payed"));
                imporBill.add(b);
            }

        } catch (Exception e) {
        }
        return imporBill;

    }
        public List<Detail> getAllAcountBill(int billid) {
        List<Detail> listDetail = new ArrayList<>();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query = "select * from Detail\n" +
                            "where billid = ?";
            stm = connection.prepareStatement(query);
            stm.setInt(1, billid);
            rs = stm.executeQuery();
            while (rs.next()) {
                Detail g = new Detail();
                Bill b = new Bill();
                Category c = new Category();
                c.setId(rs.getInt(1));
                g.setSeri(rs.getString(2));
                g.setCategory(c);
                b.setId(rs.getInt(3));
                g.setBills(b);
                g.setColorCode(rs.getString(4));
                g.setUnit(rs.getString(5));
                g.setQuantity(rs.getInt(6));
                g.setPrice(rs.getInt(7));
                listDetail.add(g);
            }

        } catch (Exception e) {
        }
        return listDetail;

    }
        public List<Category> getNameCategory() {
        String query = "select id, name from Category";
        List<Category> listN = new ArrayList<>();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {

            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                listN.add(c);
            }

        } catch (Exception e) {
        }
        return listN;
    }
        public boolean InserBill(int id, Date date, int supplierid, int paid) {
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query = "INSERT INTO [dbo].[Bill]\n"
                + "           ([id]\n"
                + "           ,[date]\n"
                + "           ,[supplierid]\n"
                + "           ,[amountPaid])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
            stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            stm.setDate(2, date);
            stm.setInt(3, supplierid);
            stm.setFloat(4, paid);
            return stm.execute();
        } catch (Exception e) {
        }
        return false;
    }
        public int Total(String bid) {
            Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query = "select sum(table1.total) as total from (select sum(price*quantity) as total from Detail\n" +
"               where billid =?\n" +
"                group by seri) as table1";
            stm = connection.prepareStatement(query);
            stm.setString(1, bid);
            rs = stm.executeQuery();
            if (rs.next()) {
                int total = rs.getInt("total");
                return total;
            }
        } catch (Exception e) {
        }
        return 0;
    }
        public static void main(String[] args) {
        BillDBContext abc = new BillDBContext();
        List<Bill> listb = new ArrayList<>();
        listb = abc.getBills2();
            for (Bill bill : listb) {
                System.out.println(bill);
            }
//            System.out.println(Date.valueOf(LocalDate.now()));
//            System.out.println(abc.InserBill(123, Date.valueOf(LocalDate.now()), 4, 1000000));
    }
}
