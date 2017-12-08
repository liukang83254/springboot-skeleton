<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
 String ctxPath = request.getContextPath();
%>
<c:set var="ctxPath" value="<%=ctxPath%>"></c:set>
<jsp:include page="common/header.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<div class="well">
    Function will be go live soon
</div>
<jsp:include page="common/footer.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>