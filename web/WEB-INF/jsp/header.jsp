<%-- 
    Document   : header
    Created on : Apr 18, 2018, 9:38:47 PM
    Author     : Tam Huynh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.htm">ABSD Fitness & Yoga Center</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
    
                        <li class="divider"></li>
                        <li><a href="Login.htm"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="departs.htm"><i class="fa fa-wrench fa-fw"></i> Quản lý phòng ban</a>
                        </li>
                        <li>
                            <a href="redirectCreatestaff.htm"><i class="fa fa-wrench fa-fw"></i> Quản lý nhân viên<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="redirectCreatestaff.htm"><i class="fa fa-edit fa-fw"></i>Thêm mới</a>
                                </li>
                                <li>
                                    <a href="staffs.htm"><i class="fa fa-table fa-fw"></i>Thông tin nhân viên</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="redirectCreaterecord.htm"><i class="fa fa-edit fa-fw"></i> Ghi nhận thành tích</a>
                        </li>
                        <li>
                            <a href="records.htm"><i class="fa fa-bar-chart-o fa-fw"></i> Tổng hợp thành tích<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="records.htm">Thành tích cá nhân</a>
                                </li>
                                <li>
                                    <a href="#">Thành tích của phòng</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
