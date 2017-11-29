<%
 String ctxPath = request.getContextPath();
%>
<jsp:include page="common/header.jsp" >
	<jsp:param name="ctxPath" value="<%=ctxPath%>" />
</jsp:include>
<jsp:include page="common/navigation.jsp" >
    <jsp:param name="ctxPath" value="<%=ctxPath%>" />
</jsp:include>
<div class="container">
An exception occurred! Please contact Support!
</div>
<jsp:include page="common/footer.jsp" >
	<jsp:param name="ctxPath" value="<%=ctxPath%>" />
</jsp:include>