<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!-- BEGIN HEAD -->
<head>
    <title>Klass | 修改管理员个人信息</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="css/backstage/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/backstage/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/backstage/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/backstage/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="css/backstage/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/backstage/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="css/backstage/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="css/backstage/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="css/backstage/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/chosen.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/select2_metro.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/jquery.tagsinput.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/clockface.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/bootstrap-toggle-buttons.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/backstage/multi-select-metro.css" />
    <link href="css/backstage/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="images/backstage/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<%@ include file="/common/backstage/header.jsp" %>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar nav-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <ul class="page-sidebar-menu">
            <li>
                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                <div class="sidebar-toggler hidden-phone"></div>
                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
            </li>
            <li class="">
                <a href="adminMain.action">
                    <i class="icon-home"></i>
                    <span class="title">主页</span>
                    <span class="selected"></span>
                </a>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-file-text"></i>
                    <span class="title">课程管理</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="courseInfoManager.action">课程信息管理</a>
                    </li>
                    <li>
                        <a href="courseBatchImport.action">批量导入课程信息</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-user"></i>
                    <span class="title">教师管理</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="teacherInfoManager.action">教师信息管理</a>
                    </li>
                    <li>
                        <a href="teacherBatchImport.action">批量导入教师信息</a>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="icon-user"></i>
                    <span class="title">用户管理</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="userInfoManager.action">用户信息管理</a>
                    </li>
                    <li>
                        <a href="userAuthority.action">权限审核</a>
                    </li>
                </ul>
            </li>
            <li class="active">
                <a href="javascript:;">
                    <i class="icon-cogs"></i>
                    <span class="title">系统管理</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="adminEditDetail.action">管理员管理</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content">
        <!-- BEGIN PAGE CONTAINER-->
        <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <h3 class="page-title">
                        管理员个人信息管理
                    </h3>
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="adminMain.action">主页</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li>
                            <a href="#">系统管理</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li>
                            <a href="#">管理员个人信息</a>
                        </li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN SAMPLE FORM PORTLET-->
                    <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <form action="admineditInfoDetail.action" class="form-horizontal" method="post" enctype="multipart/form-data">
                            <div class="control-group">
                                <label class="control-label">管理员编号</label>
                                <div class="controls">
                                    <input class="span3 m-wrap" id="adminId" name="adminId" type="text" value="${sessionScope.admin.adminId}" readonly/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">管理员名称</label>
                                <div class="controls">
                                    <input type="text" class="span3 m-wrap" id="adminName" name="adminName" value="${sessionScope.admin.adminName}" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">密码</label>
                                <div class="controls">
                                    <input type="password" class="span3 m-wrap" id="adminPwd" name="adminPwd" value="${sessionScope.admin.adminPwd}" />
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn blue">提交</button>
                                <button type="button" class="btn">取消</button>
                            </div>
                        </form>
                        <!-- END FORM-->
                    </div>
                    <!-- END SAMPLE FORM PORTLET-->
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<%@ include file="/common/backstage/footer.jsp" %>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<script src="js/backstage/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="js/backstage/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="js/backstage/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="js/backstage/bootstrap.min.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/backstage/excanvas.min.js"></script>
<script src="js/backstage/respond.min.js"></script>
<![endif]-->
<script src="js/backstage/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="js/backstage/jquery.blockui.min.js" type="text/javascript"></script>
<script src="js/backstage/jquery.cookie.min.js" type="text/javascript"></script>
<script src="js/backstage/jquery.uniform.min.js" type="text/javascript" ></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="js/backstage/ckeditor.js"></script>
<script type="text/javascript" src="js/backstage/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="js/backstage/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/backstage/select2.min.js"></script>
<script type="text/javascript" src="js/backstage/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="js/backstage/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" src="js/backstage/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/backstage/jquery.toggle.buttons.js"></script>
<script type="text/javascript" src="js/backstage/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/backstage/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="js/backstage/clockface.js"></script>
<script type="text/javascript" src="js/backstage/date.js"></script>
<script type="text/javascript" src="js/backstage/daterangepicker.js"></script>
<script type="text/javascript" src="js/backstage/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="js/backstage/bootstrap-timepicker.js"></script>
<script type="text/javascript" src="js/backstage/jquery.inputmask.bundle.min.js"></script>
<script type="text/javascript" src="js/backstage/jquery.input-ip-address-control-1.0.min.js"></script>
<script type="text/javascript" src="js/backstage/jquery.multi-select.js"></script>
<script src="js/backstage/bootstrap-modal.js" type="text/javascript" ></script>
<script src="js/backstage/bootstrap-modalmanager.js" type="text/javascript" ></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="js/backstage/app.js"></script>
<script src="js/backstage/form-components.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
        App.init();
        FormComponents.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
