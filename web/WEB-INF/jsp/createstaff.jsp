<%-- 
    Document   : depart
    Created on : Apr 18, 2018, 9:44:10 PM
    Author     : Tam Huynh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    QUẢN LÝ NHÂN VIÊN
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <f:form role="form" action="${action}" modelAttribute="st" method="post">

                        <div class="form-group">
                            <label>Username: </label>
                            
                            <f:input path="username" cssClass="form-control" placeholder="Enter username" />
                        </div>
                        <div class="form-group">
                            <label>Phòng Ban:</label>
                            <f:select path="departs.id" cssClass="form-control" id="inputState">
                                <c:forEach var="item" items="${departList}">
                                    <f:option value="${item.id}">${item.name}</f:option>
                                </c:forEach>
                            </f:select>
                            
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                           
                            <f:input path="password" cssClass="form-control" placeholder="Enter password" />
                        </div>
                        <div class="form-group">
                            <label>Giới tính:</label>
                            <div class="radio">
                                <label>
                                    <f:radiobutton path="gender" id="optionsRadios1" value="Male" checked="checked" /> Male
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <f:radiobutton path="gender" id="optionsRadios2" value="Female" /> Female
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Họ và tên:</label>
                          
                            <f:input path="name" cssClass="form-control" placeholder="Enter username" />
                        </div>

                        <div class="form-group">
                            <label>Ngày sinh:</label>
                         
                            <f:input path="birthday" cssClass="form-control" />
                        </div>

                        <div class="form-group" >
                            <label>Hình ảnh:</label>
                         
                            <f:input path="photo" cssClass="form-control" type="file" />
                        </div>

                        <label>Email:</label>
                        <div class="form-group input-group">
                            <span class="input-group-addon">@</span>
                           
                            <f:input path="email" cssClass="form-control" placeholder="Enter Email" />
                        </div>

                        <div class="form-group">
                            <label>Số điện thoại:</label>
                        
                            <f:input path="phone" cssClass="form-control" type="number" placeholder="Enter phone" />
                        </div>
                        <div class="form-group">
                            <label>Lương:</label>
                            <div class="form-group input-group">
                                <span class="input-group-addon">$</span>
                            
                                <f:input path="salary" cssClass="form-control" />
                                <span class="input-group-addon">.00</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Notes</label>
                      
                            <f:textarea path="notes" cssClass="form-control" rows="3" />
                        </div>

                        <div class="form-group">
                            <div class="radio">
                                <label>
                                 
                                    <f:radiobutton path="role" id="optionsRadios1" value="true" checked="checked" /> Nhân viên
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                  
                                    <f:radiobutton path="role" id="optionsRadios2" value="false" /> Admin
                                </label>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success">CREATE</button>
                </f:form>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
    </div>
</div>

