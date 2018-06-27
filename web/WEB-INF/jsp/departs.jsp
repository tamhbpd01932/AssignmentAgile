<%-- 
    Document   : depart
    Created on : Apr 18, 2018, 9:44:10 PM
    Author     : Tam Huynh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    QUẢN LÝ PHÒNG BAN
                </div>
                <!-- /.panel-heading -->
               <div class="panel-body">
                <table class="table table-striped table-hover table-bordered" id="editable-sample">
                    <thead>
                        <tr>
                            <th>Tên Phòng Ban</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${listDeparts}">
                            <tr>
                                <td>${item.name}</td>
                                <td><center><a href="editdeparts.htm?id=${item.id}"><button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a> | <a href="removedeparts.htm?id=${item.id}" onclick="return confirm('Are you sure you want to delete this item?');"><button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></a></center></td>
                        </tr>       
                    </c:forEach> 
                    </tbody>
                </table>
                   <a href="redirectCreatedepart.htm"><button type="button" class="btn btn-primary">Thêm mới</button></a>
            </div>
            </div>
        </div>
    </div>
</div>
