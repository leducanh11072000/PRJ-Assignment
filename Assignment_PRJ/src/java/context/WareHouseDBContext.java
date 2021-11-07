/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import model.WareHouse;

/**
 *
 * @author 84984
 */
public class WareHouseDBContext extends DBContext{
    public List<WareHouse> getAllWareHouseData(){
        List<WareHouse> listWare =new ArrayList<>();
        Connection connection = createConn();
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            String query = "select ROW_NUMBER() over(order by g.[name] asc) as stt ,c.[Name] as cate,g.[name],sum(g.number) as 'soluong' from importGoods g\n"
                    + "join kho k on g.Seri = k.seri\n"
                    + "join Category c on c.id = g.categoryID\n"
                    + "group by g.[Name], c.Name";
            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            
            while(rs.next()){
                WareHouse wa  = new WareHouse();
                wa.setId(rs.getInt(1));
                wa.setCate(rs.getString(2));
                wa.setName(rs.getString(3));
                wa.setNumber(rs.getInt(4));
                listWare.add(wa);
            }
        } catch (Exception e) {
        }
        return listWare;
}
}
