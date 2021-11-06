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
import model.Supplier;

/**
 *
 * @author 84984
 */
public class SupplierDBContext extends DBContext{
    public List<Supplier> getAllSupplier(){
        List<Supplier> listSup = new ArrayList<>();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query ="select *from Supplier";
            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            
            while(rs.next()){
                Supplier supp = new Supplier();
                supp.setId(rs.getInt(1));
                supp.setName(rs.getString(2));
                supp.setAddress(rs.getString(3));
                supp.setNumber(rs.getString(4));
                supp.setEmail(rs.getString(5));
                listSup.add(supp);
            }
        } catch (Exception e) {
        }finally {
            try {
                stm.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        return listSup;
    }
}
    
//    public void delete(int id) {
//        Connection connection = createConn();
//        PreparedStatement ps = null;
//        try {
//            String sql = "DELETE Supplier WHERE id =?";
//            ps = connection.prepareStatement(sql);
//            ps.setInt(1, id);
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(CustomerDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            try {
//                ps.close();
//            } catch (Exception e) {
//            }
//            try {
//                connection.close();
//            } catch (Exception e) {
//            }
//        }
//    }
    public static void main(String[] args) {
        SupplierDBContext sdb = new SupplierDBContext();
//        sdb.delete(2);
        List<Supplier> s = sdb.getAllSupplier();
        for (Supplier supplier : s) {
            System.out.println(supplier);
        }
    }
}
