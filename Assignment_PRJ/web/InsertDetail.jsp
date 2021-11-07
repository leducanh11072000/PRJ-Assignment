<%-- 
    Document   : InsertDetail
    Created on : Nov 7, 2021, 7:12:38 PM
    Author     : 84984
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="index_1.html"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Action/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="Action/assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="Action/assets/css/Table-With-Search-1.css">
        <link rel="stylesheet" href="Action/assets/css/Table-With-Search.css">
        
    </head>
    <body>
        <form action="InsertDetail" method="POST">
            Mã hóa đơn
            <select name="did">
                <!--<c:forEach items="${listbc}" var="d">-->
                    <option value="${d.id}">${d.id}</option>
                    <!--</c:forEach>-->
                </select>
                <table >
                    <tbody>
                        <tr>
                            <td>Loại </td>
                            <td> <input required style="width: 200px" type="text" name="cateid" /></td>
                        </tr>   

                        <tr>
                            <td>Seri</td>
                            <td> <input required style="width: 200px" type="text" name="seri"/></td>
                        </tr>

                        <tr>
                            <td>Mã hóa đơn </td>
                            <td> <input required style="width: 200px" type="text" name="billid"/></td>
                        </tr>

                        <tr>
                            <td>Mã màu</td>
                            <td><input required style="width: 200px" type="text" name="colorCode"/></td>
                        </tr>
                        <tr>
                            <td>Đơn vị tính</td>
                            <td><input required style="width: 200px" type="text" name="unit"/></td>
                        </tr>
                        <tr>
                            <td>Số lượng</td>
                            <td><input required style="width: 200px" type="text" name="quantity"/></td>
                        </tr>
                        <tr>
                            <td>Đơn Giá</td>
                            <td><input required style="width: 200px" type="text" name="price"/></td>
                        </tr>

                </tbody>
            </table>
             <input type="submit" value="Lưu" />
        </form>
        <a  href="Bill">Exit</a>
    </body>
</html>
