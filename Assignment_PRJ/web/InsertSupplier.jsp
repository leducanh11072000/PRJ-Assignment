<%-- 
    Document   : InsertSupplier
    Created on : Nov 7, 2021, 10:20:41 PM
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
        <br>
        <form action="InsertSupplier" method="POST">
            <table >
                <tbody> 
                    <tr>
                        <td>Tên</td>
                        <td> <input required style="width: 200px" type="text" name="name"  /></td>
                    </tr>   

                    <tr>
                        <td>Địa chỉ</td>
                        <td> <input required style="width: 200px" type="text" name="address"  /></td>
                    </tr>

                    <tr>
                        <td>Số điện thoại</td>
                        <td> <input required style="width: 200px" type="text" name="phoneNumber"  /></td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td><input required style="width: 200px" type="email" name="email"  /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Lưu"/>  
            <a  href="SupplierList">Exit</a>
        </form>
    </body>
</html>
