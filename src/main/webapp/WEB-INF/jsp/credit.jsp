<%@ include file="common/taglib.jsp" %>

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
	<form:form method="post" commandName="todo">
		<form:hidden path="id" />
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" type="text" class="form-control"
				required="required" />
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>

		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control"
				required="required" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>

		<button type="submit" class="btn btn-success">Add</button>
	</form:form>
</div>
<jsp:include page="common/footer.jsp" >
	<jsp:param name="ctxPath" value="<%=ctxPath%>" />
</jsp:include>