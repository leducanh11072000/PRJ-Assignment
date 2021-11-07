<%-- 
    Document   : ShowDetail
    Created on : Nov 7, 2021, 9:40:14 PM
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
                <div class="col-md-12 search-table-col">
            
            <div class="form-group pull-left col-lg-4">
                <input type="text" class="search form-control" placeholder="Search ..">
            </div>
            <span class="counter pull-right"></span>
            <div class="table-responsive table-bordered table table-hover table-bordered results">
                <table class="table table-bordered table-hover">
                    <thead class="bill-header cs">
                        <tr>
                            <th id="trs-hd" class="col-lg-1"style="width: 100px">Loại sản phẩm</th>
                            <th id="trs-hd" class="col-lg-3"style="width: 100px">Mã sản phẩm </th>                            
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Mã màu</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Đơn vị tính</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Số lượng</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Đơn giá</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Tổng giá</th>
<!--                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Trạng thái</th>-->
                        </tr>
                    </thead>
                   <tbody>
                   <c:forEach items="${details}" var="g" >
                        <tr>
                            <td style="width: 100px">${g.category.id}</td>                           
                            <td style="width: 100px">${g.seri}</td>                            
                            <td style="width: 100px">${g.colorCode}</td>
                            <td style="width: 100px">${g.unit}</td>
                            <td style="width: 100px">${g.quantity}</td>
                            <td style="width: 100px">${g.price}</td>
                            <td style="width: 100px">${g.total}</td>
<!--                            <td style="width: 100px"><a class="nav-link" href="edit?pid=${g.seri}">Sửa</a></td>-->
                        </tr>
                    </c:forEach>
                </tbody>
                </table>
            </div>
        </div>
    </nav>
    <script src="Action/assets/js/jquery.min.js"></script>
        <script src="Action/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="Action/assets/js/Table-With-Search.js"></script>        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
