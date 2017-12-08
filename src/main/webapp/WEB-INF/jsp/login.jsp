<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp" %>
<%@ page import="java.util.Map" %>
<%
 String ctxPath = request.getContextPath();
 Map<String, String[]> map = request.getParameterMap();
%>
<jsp:include page="common/header.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
    <div class="container" style="margin-top:100px">
        <div class="row">
            <div class="col-sm-6 col-md-3 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong> Sign in to continue</strong>
                    </div>
                    
                    <div class="panel-body">
                        <c:if test = "${param.error ne null}">
                        <div class="panel-heading">
                            <strong style="color:red;font-size:10"> Incorrect User name Or Password</strong>
                        </div>
                        </c:if>
                        <form action="<%=ctxPath %>/login" method="POST" name="Login_Form" class="form-signin">       
				              
				              <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
				              <input type="password" class="form-control" name="password" placeholder="Password" required=""/>            
				              <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>            
				        </form>
				        <!--  
                        <form role="form" action="<%=ctxPath %>/login" method="POST">
                            <fieldset>
                                <div class="row">
                                    <div class="center-block">
                                        <img class="profile-img"
                                            src="<%=ctxPath %>/image/photo.png" alt="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span> 
                                                <input class="form-control" placeholder="Username" name="username" type="text" autofocus>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-lock"></i>
                                                </span>
                                                <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                            -->
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="common/footer.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>