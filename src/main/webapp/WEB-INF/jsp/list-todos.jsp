<%@ include file="common/taglib.jsp" %>

<%
 String ctxPath = request.getContextPath();
%>
<jsp:include page="common/header.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<c:set var="ctxPath" value="<%=ctxPath%>"></c:set>
<jsp:include page="common/navigation.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
	
	<div class="container">
		<table class="table table-striped">
			<caption>Your todos are</caption>
			<thead>
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is it Done?</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
						<td>${todo.done}</td>
						<td><a type="button" class="btn btn-success"
							href="<%=ctxPath%>/update-todo?id=${todo.id}">Update</a></td>
						<td><a type="button" class="btn btn-warning"
							href="<%=ctxPath%>/delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="${ctxPath}/add-todo">Add a Todo</a>
		</div>
	</div>
<jsp:include page="common/footer.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>