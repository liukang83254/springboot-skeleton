<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%
 String ctxPath = request.getContextPath();
%>
<jsp:include page="common/header.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<c:set var="ctxPath" value="<%=ctxPath%>"></c:set>
<script src="<%=ctxPath%>/js/echarts.js"></script>
<style>
.checked {
    color: orange;
}
.table-condensed{
  font-size: 12px;
}
</style>
<div align="center">
<br/>
<div id="main" style="width: 100%;height:300px;"></div>
<div class="container" >
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Organization</th>
                    <th>Grading</th>
                    <th>Rating Score</th>
                    <th>More Detail</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.name}</td>
                        <td>${todo.job}</td>
                        <td>${todo.company}</td>
                        <td><c:forEach begin="1" end="${todo.rating}" varStatus="loop"><span class="fa fa-star checked"></span></c:forEach></td>
                        <td>${todo.ratingScore}</td>
                        <td><a href="${ctxPath}/personal?name=${todo.name}">${todo.detail}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
         <ul class="pagination">
		  <li><a href="<%=ctxPath%>/list-todos?pageNo=1">1</a></li>
		  <li><a href="<%=ctxPath%>/list-todos?pageNo=2">2</a></li>
		  <li><a href="<%=ctxPath%>/list-todos?pageNo=3">3</a></li>
		  <li><a href="<%=ctxPath%>/list-todos?pageNo=4">4</a></li>
		  <li><a href="<%=ctxPath%>/list-todos?pageNo=5">5</a></li>
		  <li><a href="<%=ctxPath%>/list-todos?pageNo=6&morepage=true">...</a></li>
		</ul> 
</div>
</div>

<script type="text/javascript">

var myChart = echarts.init(document.getElementById('main'));

var option = {
        title: {
            text: 'Customer Grading Histogram'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross'
            }
        },
        xAxis:  {
            type: 'category',
            boundaryGap: false,
            data: ['200', '300', '350', '375', '400', '420', '450', '475', '500', '525', '550', '575', '600', '650', '700']
        },
        yAxis: {
            type: 'value',
            axisLabel: {
                formatter: '{value} No.'
            },
            axisPointer: {
                snap: true
            }
        },
        visualMap: {
            show: false,
            dimension: 1,
            color: 'blue',
            pieces: []
        },
        series: [
            {
                name:'No. of Customers',
                type:'line',
                smooth: true,
                lineStyle: {
                	normal: {
                		color : 'red',
                		type : 'dashed'
                	}
                },
                data: [0, 1, 2, 2, 3, 5, 6, 5, 5, 5, 4, 3, 2, 2, 0],
                markArea: {
                    data: [ [{
                    	name: 'Low credit clients',
                        xAxis: '0',
                        itemStyle: {
                            normal: {
                                color: 'red',
                                opacity: 0.2
                            }
                        },
                        label : {
                        	normal: {
                                color: 'red',
                                fontSize: 12,
                                opacity: 1
                            }
                        }
                    }, {
                        xAxis: '400'
                    }], [{
                        name: 'High credit clients',
                        xAxis: '550',
                        itemStyle: {
                            normal: {
                                color: 'green',
                                opacity: 0.2
                            }
                        },
                        label : {
                            normal: {
                                color: 'green',
                                fontSize: 12,
                                opacity: 1
                            }
                        }
                    }, {
                        xAxis: '700'
                    }] ]
                }
            }
        ]
    };


myChart.setOption(option);
</script>
<jsp:include page="common/footer.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>