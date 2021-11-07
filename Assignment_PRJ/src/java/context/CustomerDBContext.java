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
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 84984
 */
public class CustomerDBContext extends DBContext{
    
    public List<Customer> getAllCustomer(){
        List<Customer> listCus = new ArrayList<>();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query ="select * from customer";
            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            
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
        } finally {
            try {
                stm.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
        return listCus;
    }
    public Customer getCustomer(String id){
        Customer cus = new Customer();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String sql ="select * from customer where id =?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            rs = stm.executeQuery();
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
        } finally {
            try {
                stm.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
        return cus;
    }
    public void insert(String id,String name,String phoneNumber,int Total,int Payed,int Owes){
        PreparedStatement stm = null;
        Connection connection = createConn();
        try {
            String sql = "INSERT INTO [dbo].[customer]\n" +
                    "           ([id]\n" +
                    "           ,[name]\n" +
                    "           ,[phoneNumber]\n" +
                    "           ,[total]\n" +
                    "           ,[payed]\n" +
                    "           ,[owes])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.setString(2, name);
            stm.setString(3, phoneNumber);
            stm.setInt(4, Total);
            stm.setInt(5, Payed);
            stm.setInt(6, Owes);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
    }
    public boolean update(String id,String name,String phoneNumber,int Total,int Payed,int Owes){
        Connection connection = createConn();
        PreparedStatement stm = null;
        try {
            String sql = "UPDATE [customer]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[phoneNumber] = ?\n"
                    + "      ,[total] = ?\n"
                    + "      ,[payed] = ?\n"
                    + "      ,[owes] = ?\n"
                    + " WHERE id =?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, phoneNumber);
            stm.setInt(3, Total);
            stm.setInt(4, Payed);
            stm.setInt(5, Owes);
            stm.setString(6, id);
            return stm.execute();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
        return false;
    }
    
      
    public void delete(String id) {
        Connection connection = createConn();
        PreparedStatement ps = null;
        try {
            String sql = "DELETE customer WHERE id =?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                ps.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
    }
    //Test
    public static void main(String[] args) {
        CustomerDBContext dao = new CustomerDBContext();
        List<Customer> list = dao.getAllCustomer();
        for (Customer o : list) {
            System.out.println(o);
        }
        
//        dao.update("anhle", "Duc Anh", "0984268930", 1100000, 590000, 510000);
    }
}
