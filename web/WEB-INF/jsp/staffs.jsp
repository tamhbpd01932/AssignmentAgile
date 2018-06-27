<%-- 
    Document   : staff
    Created on : Apr 18, 2018, 9:47:51 PM
    Author     : Tam Huynh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    QUẢN LÝ PHÒNG BAN
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="space15">
                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                            <thead>
                                <tr>
                                    <th>Photo</th>
                                    <th>Username</th>
                                    <th>Full Name</th>
                                    <th>Depart</th>
                                    <th>Gender</th>
                                    <th>BirthDay</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Role</th>
                                    <th>Menu</th> 
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="item" items="${listStaffs}">
                                    <tr class="">
                                        <td style="
                                            padding-left: 0px;
                                            padding-top: 5px;
                                            padding-bottom: 5px;
                                            padding-right: 0px;
                                            ">
                                <center>
                                    <a class="chat-avatar">
                                        <img alt="" src="img/${item.photo}">
                                    </a>         
                                </center>
                                </td>
                                <td>${item.username}</td>
                                <td>${item.name}</td>
                                 <td>${item.departs.name}</td>
                                <td>${item.gender}</td>
                                <td><fmt:formatDate pattern = "dd/MM/yyyy" value = "${item.birthday}" /></td>

                                <td>${item.email}</td>
                                <td>${item.phone}</td>
                               
                               <td>
                                   <c:if test="${item.role == true}">Nhân viên</c:if>
                                   <c:if test="${item.role == false}">Admin</c:if>
                               </td>
                                <td><center><a href="editstaffs.htm?username=${item.username}"><button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></a> | <a href="removestaff.htm?username=${item.username}" onclick="return confirm('Are you sure you want to delete this item?');"><button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></a></center></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /#page-wrapper -->

            </div>
        </div>
    </div>
</div>
