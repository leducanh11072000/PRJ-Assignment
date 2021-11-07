/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;
import model.Category;
import model.Detail;

/**
 *
 * @author 84984
 */
public class DetailDBContext extends DBContext{
    public Detail getDetailBySeri(String seri) {
      
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        String query = "select *from Detail where seri = ?";

        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, seri);
            rs = stm.executeQuery();
            while (rs.next()) {
                Detail g = new Detail();
                Category c = new Category();
                Bill b = new Bill();
                c.setId(rs.getInt("categoryid"));
                g.setCategory(c);
                g.setSeri(rs.getString("seri"));
                b.setId(rs.getInt("billid"));
                g.setBills(b);
                g.setColorCode(rs.getString("colorCode"));
                g.setUnit(rs.getString("unit"));
                g.setQuantity(rs.getInt("quantity"));
                g.setPrice(rs.getInt("price"));
                return g;
            }
        } catch (Exception e) {
            
        }
        return null;
    }
    public boolean updateDetailBySeri(int categoryid,int billid,String colorCode,String unit,int quantity,int price,String oldSeri){
        Connection connection = createConn();
            PreparedStatement stm = null;
            ResultSet rs = null;
        try {
            
            String query = "UPDATE [dbo].[Detail]\n" +
                    "   SET [categoryid] = ?\n" +
                    "      ,[billid] = ?\n" +
                    "      ,[colorCode] = ?\n" +
                    "      ,[unit] = ?\n" +
                    "      ,[quantity] = ?\n" +
                    "      ,[price] = ?\n" +
                    " WHERE seri =?";
            stm = connection.prepareStatement(query);
            stm.setInt(1, categoryid);
            stm.setInt(2, billid);
            stm.setString(3, colorCode);
            stm.setString(4, unit);
            stm.setInt(5, quantity);
            stm.setInt(6, price);
            stm.setString(7, oldSeri);
            return stm.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
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
    public List<Detail> getAllDetail(){
         List<Detail> details = new ArrayList();
            Connection connection = createConn();
            PreparedStatement stm = null;
            ResultSet rs = null;
        try {
            String query =" Select * from detail";
            stm = connection.prepareStatement(query);
            while (rs.next()) {
                Detail g = new Detail();
                Category c = new Category();
                Bill b = new Bill();
                c.setId(rs.getInt("categoryid"));
                g.setCategory(c);
                g.setSeri(rs.getString("seri"));
                b.setId(rs.getInt("billid"));
                g.setBills(b);
                g.setColorCode(rs.getString("colorCode"));
                g.setUnit(rs.getString("unit"));
                g.setQuantity(rs.getInt("quantity"));
                g.setPrice(rs.getInt("price"));
                details.add(g);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return details;
    }
}
