<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
        <img src="/static/assets/img/logo-128x128.png" alt="光束云" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">IoT-Console</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/main')?'menu-open':''}">
                    <a href="/main" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            控制台
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/auth/user/')?'menu-open':''}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-user"></i>
                        <p>
                            账户
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/auth/user/add" class="nav-link ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/auth/user/add')?'active':''}">
                                <i class="far fa-edit nav-icon"></i>
                                <p>新增</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/auth/user/list" class="nav-link ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/auth/user/list') || fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/auth/user/edit')?'active':''}">
                                <i class="far fa-list-alt nav-icon"></i>
                                <p>查询列表</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/iot/device/')?'menu-open':''}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cog"></i>
                        <p>
                            设备
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/iot/device/add" class="nav-link ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/iot/device/add')?'active':''}">
                                <i class="far fa-edit nav-icon"></i>
                                <p>新增</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/iot/device/list" class="nav-link ${fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/iot/device/list') || fn:startsWith(requestScope['javax.servlet.forward.servlet_path'],'/iot/device/edit')?'active':''}">
                                <i class="far fa-list-alt nav-icon"></i>
                                <p>查询列表</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
