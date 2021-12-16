<%@ page import="models.UserModel" %>
<%@ page import="models.AttributeModel" %>
<%@ page import="models.AttributeModelMgr" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Steven
  Date: 4/5/2021
  Time: 1:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    UserModel user = (UserModel) request.getAttribute("user");
    AttributeModelMgr.getInstance().init(request, response);
    List<AttributeModel> attrlist = AttributeModelMgr.getInstance().loaddata();
    AttributeModel attr = attrlist.get(0);
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="split.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
            color: #fff;
            background-color: #e30081;
            outline: none;
            box-shadow: none;
        }
        .checked {
            color: #000;
        }
        .navbar-inverse:focus,
        .navbar-inverse:active,
        .navbar-inverse-icon:focus {
            outline: none;
            box-shadow: none;
        }
    </style>
</head>
<body data-gr-c-s-loaded="true" style="padding-top: 0px; background-image: linear-gradient(to bottom,#f5a700, #f5a700); background-color: #f5a700;">
    <nav class="navbar navbar-default navbar-static-top navbar-inverse" style="background-image: linear-gradient(to bottom,#7e00ba, #7e00ba);background-color: #7e00ba">
    <div class="container">
        <ul class="nav navbar-nav">

            <li style="padding-top:0px" class="active">
                <a href="/"><span class="glyphicon glyphicon-home"></span> Home1</a>
            </li>
            <li style="padding-top:0px;height:50px">
                <a href="/student"><span class="glyphicon glyphicon-pencil"></span> Student</a>
            </li>

            <li class="dropdown" style="padding-top:0px">
                <a href="/teacher" ><span class="glyphicon glyphicon-book"></span> Teacher</a>
            </li>
            <li class="dropdown" style="padding-top:0px">
                <a href="/teacher"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-info-sign"></span> About </a>
                <ul class="dropdown-menu" role="menu">
                    <li><a>How to apply for a scholarship</a></li>
                    <li><a>Who can apply</a></li>
                    <li><a>What is the minimized requirements</a></li>
                    <li><a>How to check the result</a></li>
                </ul>
            </li>

            <li class="dropdown" style="padding-top:0px">
                <a href="index.jsp" ><span class="glyphicon glyphicon-log-out"></span> Log Out</a>
            </li>
        </ul>

    </div>
</nav>
    <div class="text-center">
        <div class="mw8 mw8-ns center pa3 ph5-ns bg-white br1 shadow-outer-1 mv6">
            <div class="overview-content">
                <div class="limit-width">

                    <!---->
                    <div id="ember267" class="add-ons ember-view">
                        <div class="flex-ns items-center pv2">

                            <div class="flex dark-gray mr2" style="color:#075f87;font-weight: bold;">
                                <div class="mr1" sytle="color:red">Website information</div>

                            </div>
                            <a href="/apps/sheltered-chamber-05643/resources" id="ember269" class="flex items-center hk-link no-underline f6 mv1 mv0-ns ember-view">
                                <span class="underline"></span>
                                <svg style="height: 16px; width: 16px;" id="malibu-icon-svg-ember270" class="icon malibu-icon fill-blue ml--3 nudge-down--1" data-test-icon-name="nav-go-16" data-test-target="malibu-icon" aria-hidden="true" role="img">
                                    <!---->
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#nav-go-16"></use>
                                </svg>
                            </a>
                        </div>
                        <div id="ember354" class="mb5 ember-view">
                            <div id="ember355" class="hk-well ember-view">
                                <div id="ember357" style="text-align:left" class="f5 gray lh-copy ember-view">Due to the covid 19 pandemic, most teachers have to teach remotely from home.
                                    Under the new teaching method, how to adjust the teaching strategy quickly and
                                    effectively to improve the teaching quality has become a hot topic. Because students
                                    can only face electronic products, such as computers, tablets for distance learning,
                                    students in the long face of these electronic products are difficult to concentrate, which
                                    will lead to a decrease in their learning efficiency.<a class="hk-link" target="_blank">Learn more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ember273" class="ember-view">
                        <div class="flex-ns items-center pv2">
                            <div class="flex dark-gray mr2" style="color:#075f87;font-weight: bold;">
                                <div class="mr1">Your information</div>
                                <!--<span title="" id="ember274" class="hk-badge tooltip-component ember-view" data-original-title="Estimated monthly cost">Male</span>-->
                            </div>
                        </div>
                        <div class="purple-box">

                            <div id="ember277" class="display-formation-list hk-hide-bb-last-row ember-view">
                                <div class="flex pa3 items-center bb b--light-silver">
                                    <!---->
                                    <div class="mr3 flex-auto">
                                        <div class="flex flex-row w-90">
                                            <span title="" id="ember275" class="hk-badge tooltip-component ember-view" data-original-title="Estimated monthly cost">Name</span>
                                            <!--<div class="mr2" >Name</div>-->
                                        </div>
                                        <!---->
                                    </div>
                                    <span class="text-uppercase b f5">
                              <span>${user.getFirstname()}</span>
                              </span>
                                </div>

                                <div class="flex pa3 items-center bb b--light-silver">
                                    <!---->
                                    <div class="mr3 flex-auto">
                                        <div class="flex flex-row w-90">
                                            <span title="" id="ember293" class="hk-badge tooltip-component ember-view" data-original-title="Estimated monthly cost">Time</span>
                                            <!--<div class="mr2" >Name</div>-->
                                        </div>
                                        <!---->
                                    </div>
                                    <span class="text-uppercase b f5">
                                        <%
                                            System.out.println("attr.getTime(): " + attr.getTime());
                                        %>
                                      <span><%= attr.getTime()%> hours</span>
                                            <!--<span>${attr.getTime()}</span>-->
                                    </span>
                                </div>

                                <div class="flex pa3 items-center bb b--light-silver">
                                    <!---->
                                    <div class="mr3 flex-auto">
                                        <div class="flex flex-row w-90">
                                            <!--<div class="mr2">Overall score</div>-->
                                            <span title="" id="ember278" class="hk-badge tooltip-component ember-view" data-original-title="Estimated monthly cost">Score</span>
                                        </div>
                                        <!---->
                                    </div>
                                    <span class="text-uppercase b f5">
                              <span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
                              </span>
                                </div>
                                <div class="flex pa3 items-center bb b--light-silver">
                                    <!---->
                                    <div class="mr3 flex-auto">
                                        <div class="flex flex-row w-90">
                                            <!--<div class="mid-gray f5 code truncate">Status</div>-->
                                            <span title="" id="ember279" class="hk-badge tooltip-component ember-view" data-original-title="Estimated monthly cost">Status</span>
                                        </div>
                                        <!---->
                                    </div>
                                    <span class="text-uppercase b f5">
                              <span class="green">Active</span>
                              </span>
                                </div>
                                <div class="flex pa3 items-center bb b--light-silver">
                                    <!---->
                                    <div class="mr3 flex-auto">
                                        <div class="flex flex-row w-90">
                                            <!--<div class="mr2">Number of courses to take</div>-->
                                            <span title="" id="ember280" class="hk-badge tooltip-component ember-view" data-original-title="Estimated monthly cost">Number of courses</span>
                                        </div>
                                        <!---->
                                    </div>
                                    <span class="text-uppercase b f5">
                              <span class="red">6</span>
                              </span>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</body>
</html>
