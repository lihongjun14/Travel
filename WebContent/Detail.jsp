<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>景点信息</title>
    <link type="text/css" rel="stylesheet" href="css/specitic%20recommend.css"/>
    <link type="text/css" rel="stylesheet" href="css/index.css"/>
    <link type="text/css" rel="stylesheet" href="css/zzsc.css"/>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="js/nav_slider.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <div id="header">
                        <img id="smalllogo" src="img/picture/smalllogo.png" />
                        <div id="nav">
                            <ul>
                                <li><a href="index.jsp">首页</a></li>
                                <li><a href="travel_atlas.jsp">旅游图谱</a></li>
                                <li><a href="xiangshanMap.jsp">香山地图</a></li>
                                <li><a href="CustomMap.jsp">路线规划</a></li>
                                <li class="cur">
                                    <ul>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">景点<strong class="caret"></strong> </a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="#">珠海</a>
                                                </li>
                                                <li>
                                                    <a href="#">中山</a>
                                                </li>
                                                <li>
                                                    <a href="#">澳门</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="./RedirectProcess.do?pageName=timeSpaceSearch">旅游集市</a></li>
                                <li><a href="./RedirectProcess.do?pageName=nearSearch">游记</a></li>
                                <!--搜索框-->
                                <li><input id="input"  type="text" onfocus="searchbar()"></li>
                                <!--搜索框-->
                            </ul>
                            <div class="curBg"></div>
                            <div class="cls"></div>
                        </div>
                        <div id="opk">
                            <ul>
                                <li><a href="index.jsp">社区</a></li>
                                <li>|</li>
                                <li><a href="index.jsp">个人</a></li>
                                <li class="img"><img src="img/icon/用户.png" width="45" height="45"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
<div class="container" id="HIntro">
    <div class="row clearfix">
        <div class="col-md-12 column" id="title" >
            <div class="row clearfix">
                <div class="col-md-12 column" >
                    <h1>${flag}</h1>                                      
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="effect1">
                        <p>地址：${Address}</p>
                        <p>电话：${TelePhone}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container"id="direction">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-2 column">
                    <p><img src="img/icon/景点.png" align="center" style="width: 60px;height: 60px;"><a href="#">附近景点</a></p>
                </div>
                <div class="col-md-2 column">
                    <p><img src="img/icon/酒店.png" align="center" style="width: 60px;height: 60px;"><a href="#">附近酒店</a></p>
                </div>
                <div class="col-md-2 column">
                    <p><img src="img/icon/美食.png" align="center" style="width: 60px;height: 60px;"><a href="#">附近美食</a></p>
                </div>
                <div class="col-md-2 column">
                    <p><img src="img/icon/娱乐.png" align="center" style="width: 60px;height: 60px;"><a href="#">附近娱乐</a></p>
                </div>
                <div class="col-md-2 column">
                    <p><img src="img/icon/游记d.png" align="center" style="width: 60px;height: 60px;"><a href="#">景点游记</a></p>
                </div>
                <div class="col-md-2 column">
                    <p><img src="img/icon/旅游%20(1).png" align="center" style="width: 60px;height: 60px;"><a href="#">旅游产品</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container" id="map">
    <div class="row clearfix">
        <div class="col-md-7 column" id="picture">
            <img class="effect3" src="${Photo}">
        </div>
        <div class="col-md-5 column">
            <div class="row clearfix">
                <div class="col-md-12 column" id="Smap">
                    <p>地图</p>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column" id="atla">
                    <p>图谱</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container" id="exIntro">
    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                        <p><img src="img/icon/介绍.png" align="center" style="width: 50px;height: 50px;">&nbsp;&nbsp;&nbsp;简介</p>
                    </div>
                        <div class="col-md-12 column" id="textdescri">
                        <p>${Info}</p>
                    </div>
                    </div>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr id="exTime">
                <td>
                    <p>开放时间  ${OpenTime}</p>
                </td>
            </tr>
            <tr id="exTickic">
                <td>
                    <p>门票 ${Ticket}</p>
                </td>
            </tr>
            <tr id="exTran">
                <td>
                    <p>交通${Traffic}</p>
                </td>
            </tr>
            <tr id="exTel">
                <td>
                    <p>电话${TelePhone}</p>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>