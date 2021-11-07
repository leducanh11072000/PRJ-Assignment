<%-- 
    Document   : newCustomer
    Created on : Nov 6, 2021, 5:20:49 PM
    Author     : 84984
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertCustomer" method="Post">
           <table >
                <tbody> 
                 <tr>
                    <td>Mã Khách Hàng  </td>
                    <td> <input required style="width: 200px" type="text" name="id"  /></td>
                </tr>   
                
                <tr>
                    <td>Tên Khách Hàng</td>
                    <td> <input required style="width: 200px" type="text" name="name"  /></td>
                </tr>
                <tr>
                    <td>Số Điện Thoại</td>
                    <td> <input required style="width: 200px" type="text" name="phoneNumber" /></td>
                </tr>
                <tr>
                    <td>Tổng cần thanh toán</td>
                    <td> <input required style="width: 200px" type="text" name="total" />VND</td>
                </tr>
                
                <tr>
                    <td>Đã Thanh toán</td>
                    <td><input required style="width: 200px" type="text" name="payed" />VND</td>
                </tr>
                </tbody>
            </table>
            <input type="submit" value="Save" />
            <a  href="customer">Cancel</a>

        </form>
        
    </body>
</html>
