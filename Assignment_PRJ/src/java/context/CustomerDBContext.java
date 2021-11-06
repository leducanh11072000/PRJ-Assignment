/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Customer;
import context.DBContext;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 84984
 */
public class CustomerDBContext extends DBContext{
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Customer> getAllCustomer(){
        List<Customer> listCus = new ArrayList<>();
        
        try {
            String query ="select * from customer";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Customer cs = new Customer();
                cs.setId(rs.getString("id"));
                cs.setName(rs.getString("Name"));
                cs.setPhone(rs.getString("phoneNumber"));
                cs.setTotal(rs.getInt("total"));
                cs.setPayed(rs.getInt("payed"));
                cs.setOwes(rs.getInt("owes"));
                listCus.add(cs);
            }
        } catch (Exception e) {
        }
        return listCus;
    }
    public Customer getCustomer(String id){
        Customer cus = new Customer();
        try {
            String sql ="select * from customer where id =?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
             while(rs.next()){
            cus.setId(rs.getString("id"));
            cus.setName(rs.getString("Name"));
            cus.setPhone(rs.getString("phoneNumber"));
            cus.setTotal(rs.getInt("total"));
            cus.setPayed(rs.getInt("payed"));
            cus.setOwes(rs.getInt("owes"));
             }  
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cus;
    }
    public void insert(String id,String name,String phoneNumber,int Total,int Payed,int Owes){
        try {
            String sql = "INSERT INTO [dbo].[customer]\n" +
                    "           ([id]\n" +
                    "           ,[Name]\n" +
                    "           ,[phoneNumber]\n" +
                    "           ,[Total]\n" +
                    "           ,[Payed]\n" +
                    "           ,[Owes])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.setString(2, name);
            stm.setString(3, phoneNumber);
            stm.setInt(4, Total);
            stm.setInt(5, Payed);
            stm.setInt(6, Owes);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void update(String id,String name,String phoneNumber,int Total,int Payed,int Owes){
        try {
            String sql = "UPDATE [customer]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[phoneNumber] = ?\n"
                    + "      ,[Total] = ?\n"
                    + "      ,[Payed] = ?\n"
                    + "      ,[Owes] = ?\n"
                    + " WHERE id =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, phoneNumber);
            stm.setInt(3, Total);
            stm.setInt(4, Payed);
            stm.setInt(5, Owes);
            stm.setString(6, id);
            stm.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    public void delete(String id) {
        try {
            String sql = "DELETE customer WHERE id =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //Test
    public static void main(String[] args) {
        CustomerDBContext dao = new CustomerDBContext();
        List<Customer> list = dao.getAllCustomer();
        for (Customer o : list) {
            System.out.println(o);
        }
        
//        dao.insert("anhle", "Duc Anh", "0984268930", 1000000, 480000, 520000);
    }
}
