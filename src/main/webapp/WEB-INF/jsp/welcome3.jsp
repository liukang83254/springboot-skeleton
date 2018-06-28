<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
 String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<!-- saved from url=(0068)http://demo.interface.club/limitless/layout_1/LTR/default/index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Customer's Accessment</title>

    <!-- Global stylesheets -->
    <link href="<%=ctxPath%>/index_files/css" rel="stylesheet" type="text/css">
    <link href="<%=ctxPath%>/index_files/styles.css" rel="stylesheet" type="text/css">
    <link href="<%=ctxPath%>/index_files/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="<%=ctxPath%>/index_files/core.css" rel="stylesheet" type="text/css">
    <link href="<%=ctxPath%>/index_files/components.css" rel="stylesheet" type="text/css">
    <link href="<%=ctxPath%>/index_files/colors.css" rel="stylesheet" type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="<%=ctxPath%>/index_files/pace.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/jquery.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/blockui.min.js"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script type="text/javascript" src="<%=ctxPath%>/index_files/d3.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/d3_tooltip.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/switchery.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/uniform.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/bootstrap_multiselect.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/moment.min.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/daterangepicker.js"></script>

    <script type="text/javascript" src="<%=ctxPath%>/index_files/app.js"></script>
    <script type="text/javascript" src="<%=ctxPath%>/index_files/dashboard.js"></script>
    <!-- /theme JS files -->
    <script type="text/javascript">
    function go() {
    	document.getElementById('iframebox').src = "<%=ctxPath%>/list-credits";
    }
    function go1() {
    	document.getElementById('iframebox').src = "<%=ctxPath%>/list-waiting";
    }
    </script>
</head>

<body class="pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="-webkit-transform: translate3d(100%, 0px, 0px); transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

    <!-- Main navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-header">
            <a class="navbar-brand" href=""><img src="<%=ctxPath%>/index_files/logo_light.png" alt=""></a>

            <ul class="nav navbar-nav visible-xs-block">
                <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
                <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
            </ul>
        </div>

        <div class="navbar-collapse collapse" id="navbar-mobile">

            <p class="navbar-text"><span class="label bg-success">Online</span></p>

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown language-switch">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<%=ctxPath%>/index_files/gb.png" class="position-left" alt="">
                        English
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a class="deutsch"><img src="<%=ctxPath%>/index_files/de.png" alt=""> Deutsch</a></li>
                        <li><a class="ukrainian"><img src="<%=ctxPath%>/index_files/ua.png" alt=""> Українська</a></li>
                        <li><a class="english"><img src="<%=ctxPath%>/index_files/gb.png" alt=""> English</a></li>
                        <li><a class="espana"><img src="<%=ctxPath%>/index_files/es.png" alt=""> España</a></li>
                        <li><a class="russian"><img src="<%=ctxPath%>/index_files/ru.png" alt=""> Русский</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-bubbles4"></i>
                        <span class="visible-xs-inline-block position-right">Messages</span>
                        <span class="badge bg-warning-400">2</span>
                    </a>
                    
                    <div class="dropdown-menu dropdown-content width-350">
                        <div class="dropdown-content-heading">
                            Messages
                            <ul class="icons-list">
                                <li><a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#"><i class="icon-compose"></i></a></li>
                            </ul>
                        </div>

                        <ul class="media-list dropdown-content-body">
                            <li class="media">
                                <div class="media-left">
                                    <img src="<%=ctxPath%>/index_files/face10.jpg" class="img-circle img-sm" alt="">
                                    <span class="badge bg-danger-400 media-badge">5</span>
                                </div>

                                <div class="media-body">
                                    <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="media-heading">
                                        <span class="text-semibold">James Alexander</span>
                                        <span class="media-annotation pull-right">04:58</span>
                                    </a>

                                    <span class="text-muted">who knows, maybe that would be the best thing for me...</span>
                                </div>
                            </li>

                            <li class="media">
                                <div class="media-left">
                                    <img src="<%=ctxPath%>/index_files/face3.jpg" class="img-circle img-sm" alt="">
                                    <span class="badge bg-danger-400 media-badge">4</span>
                                </div>

                                <div class="media-body">
                                    <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="media-heading">
                                        <span class="text-semibold">Margo Baker</span>
                                        <span class="media-annotation pull-right">12:16</span>
                                    </a>

                                    <span class="text-muted">That was something he was unable to do because...</span>
                                </div>
                            </li>

                            <li class="media">
                                <div class="media-left"><img src="<%=ctxPath%>/index_files/face24.jpg" class="img-circle img-sm" alt=""></div>
                                <div class="media-body">
                                    <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="media-heading">
                                        <span class="text-semibold">Jeremy Victorino</span>
                                        <span class="media-annotation pull-right">22:48</span>
                                    </a>

                                    <span class="text-muted">But that would be extremely strained and suspicious...</span>
                                </div>
                            </li>

                            <li class="media">
                                <div class="media-left"><img src="<%=ctxPath%>/index_files/face4.jpg" class="img-circle img-sm" alt=""></div>
                                <div class="media-body">
                                    <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="media-heading">
                                        <span class="text-semibold">Beatrix Diaz</span>
                                        <span class="media-annotation pull-right">Tue</span>
                                    </a>

                                    <span class="text-muted">What a strenuous career it is that I've chosen...</span>
                                </div>
                            </li>

                            <li class="media">
                                <div class="media-left"><img src="<%=ctxPath%>/index_files/face25.jpg" class="img-circle img-sm" alt=""></div>
                                <div class="media-body">
                                    <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="media-heading">
                                        <span class="text-semibold">Richard Vango</span>
                                        <span class="media-annotation pull-right">Mon</span>
                                    </a>
                                    
                                    <span class="text-muted">Other travelling salesmen live a life of luxury...</span>
                                </div>
                            </li>
                        </ul>

                        <div class="dropdown-content-footer">
                            <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" data-popup="tooltip" title="" data-original-title="All messages"><i class="icon-menu display-block"></i></a>
                        </div>
                    </div>
                </li>

                <li class="dropdown dropdown-user">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<%=ctxPath%>/index_files/face11.jpg" alt="">
                        <span>Victoria</span>
                        <i class="caret"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href=""><i class="icon-user-plus"></i> My profile</a></li>
                        <li><a href=""><span class="badge bg-teal-400 pull-right">58</span> <i class="icon-comment-discussion"></i> Messages</a></li>
                        <li class="divider"></li>
                        <li><a href=""><i class="icon-cog5"></i> Account settings</a></li>
                        <li><a href="<%=ctxPath%>/logout"><i class="icon-switch2"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /main navbar -->


    <!-- Page container -->
    <div class="page-container" style="min-height:858px">

        <!-- Page content -->
        <div class="page-content">

            <!-- Main sidebar -->
            <div class="sidebar sidebar-main" style="width:230px">
                <div class="sidebar-content">

                    <!-- User menu -->
                    <div class="sidebar-user">
                        <div class="category-content">
                            <div class="media">
                                <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#" class="media-left"><img src="<%=ctxPath%>/index_files/face11.jpg" class="img-circle img-sm" alt=""></a>
                                <div class="media-body">
                                    <span class="media-heading text-semibold">Victoria Baker</span>
                                    <div class="text-size-mini text-muted">
                                        <i class="icon-pin text-size-small"></i> &nbsp;Santa Ana, CA
                                    </div>
                                </div>

                                <div class="media-right media-middle">
                                    <ul class="icons-list">
                                        <li>
                                            <a href="http://demo.interface.club/limitless/layout_1/LTR/default/index.html#"><i class="icon-cog3"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /user menu -->


                    <!-- Main navigation -->
                    <div class="sidebar-category sidebar-category-visible">
                        <div class="category-content no-padding">
                            <ul class="navigation navigation-main navigation-accordion">
                                <!-- Main -->
                                <li class="navigation-header"><span>Main</span> <i class="icon-menu" title="" data-original-title="Main pages"></i></li>
                                <li class="active"><a href="javascript:void(0)" onclick="go()"><i class="icon-home4"></i> <span>Comprehensive Credit</span></a></li>
                                <li>
                                    <a href="javascript:void(0)" onclick="go1()"><i class="icon-stack2"></i> <span>Loans Credit</span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="go1()"><i class="icon-copy"></i> <span>Opening Credit</span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" onclick="go1()"><i class="icon-droplet2"></i> <span>Letter of Credit</span></a>
                                    
                                </li>
                                
                                <li><a href="javascript:void(0)" onclick="go1()"><i class="icon-list-unordered"></i> <span>Trust Credit<span class="label bg-blue-400">1.6</span></span></a></li>
                                <!-- /main -->
                            </ul>
                        </div>
                    </div>
                    <!-- /main navigation -->

                </div>
            </div>
            <!-- /main sidebar -->


            <!-- Main content -->
            <div class="content-wrapper">
                <div id="wrapper" style="position:relative">
			        <iframe scrolling="auto" frameborder="0" src="<%=ctxPath%>/list-credits" style="position: absolute;top:0px;height:100vh; width: 100%;" name="iframebox" id="iframebox">
                </iframe>
			    </div>
            </div>
            <!-- /main content -->

        </div>
        <!-- /page content -->

    </div>
    <!-- /page container -->



<div class="daterangepicker dropdown-menu ltr opensleft"><div class="calendars"><div class="calendar left"><div class="calendar-table"></div><div class="daterangepicker_input"><div class="calendar-time" style="display: none;"><div></div></div></div></div><div class="calendar right"><div class="calendar-table"></div><div class="daterangepicker_input"><div class="calendar-time" style="display: none;"><div></div></div></div></div></div><div class="ranges"><ul><li data-range-key="Today">Today</li><li data-range-key="Yesterday">Yesterday</li><li data-range-key="Last 7 Days">Last 7 Days</li><li data-range-key="Last 30 Days">Last 30 Days</li><li data-range-key="This Month">This Month</li><li data-range-key="Last Month">Last Month</li><li data-range-key="Custom Range">Custom Range</li></ul><div class="daterangepicker-inputs"><div class="daterangepicker_input"><span class="start-date-label">Start date:</span><input class="form-control" type="text" name="daterangepicker_start" value=""><i class="icon-calendar3"></i></div><div class="daterangepicker_input"><span class="end-date-label">End date:</span><input class="form-control" type="text" name="daterangepicker_end" value=""><i class="icon-calendar3"></i></div></div><div class="range_inputs"><button class="applyBtn btn btn-sm btn-small bg-slate-600 btn-block" disabled="disabled" type="button">Apply</button> <button class="cancelBtn btn btn-sm btn-small btn-default btn-block" type="button">Cancel</button></div></div></div><div class="d3-tip" style="position: absolute; top: 0px; display: none; pointer-events: none; box-sizing: border-box;"></div><div class="d3-tip" style="position: absolute; top: 0px; display: none; pointer-events: none; box-sizing: border-box;"></div><div class="d3-tip e" style="position: absolute; top: 791px; display: none; pointer-events: none; box-sizing: border-box; left: 338px;"><ul class="list-unstyled mb-5"><li><div class="text-size-base mb-5 mt-5"><i class="icon-share4 position-left"></i>Social media</div></li><li>Visits: &nbsp;<span class="text-semibold pull-right">2948</span></li><li>Share: &nbsp;<span class="text-semibold pull-right">37.30%</span></li></ul><div class="d3-tip-arrow"></div></div><div class="d3-tip e" style="position: absolute; top: 789px; display: none; pointer-events: none; box-sizing: border-box; left: 740px;"><ul class="list-unstyled mb-5"><li><div class="text-size-base mb-5 mt-5"><span class="status-mark border-success-300 position-left"></span>Pending campaigns</div></li><li>Total: &nbsp;<span class="text-semibold pull-right">190</span></li><li>Share: &nbsp;<span class="text-semibold pull-right">17.81%</span></li></ul><div class="d3-tip-arrow"></div></div><div class="d3-tip" style="position: absolute; top: 0px; display: none; pointer-events: none; box-sizing: border-box;"></div><div class="d3-tip" style="position: absolute; top: 0px; display: none; pointer-events: none; box-sizing: border-box;"></div><div class="d3-tip" style="position: absolute; top: 0px; display: none; pointer-events: none; box-sizing: border-box;"></div><div class="d3-tip" style="position: absolute; top: 0px; display: none; pointer-events: none; box-sizing: border-box;"></div></body></html>