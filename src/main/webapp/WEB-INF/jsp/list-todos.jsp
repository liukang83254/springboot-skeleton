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
</style>
<div align="center">
<br/>
<div id="main" style="width: 100%;height:400px;"></div>
<div class="container" >
        <table class="table table-bordered">
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
</div>
</div>

<script type="text/javascript">

var myChart = echarts.init(document.getElementById('main'));

var option = {
        title: {
            text: 'Customer Grading Histogram',
            subtext: 'Credit Rating'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross'
            }
        },
        toolbox: {
            show: true,
            feature: {
                //saveAsImage: {}
            }
        },
        xAxis:  {
            type: 'category',
            boundaryGap: false,
            data: ['0', '50', '100', '150', '200', '250', '300', '350', '400', '450', '500', '550', '600', '650', '700']
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
            pieces: []
        },
        series: [
            {
                name:'No. of Customers',
                type:'line',
                smooth: true,
                data: [0, 50, 85, 120, 150, 200, 210, 220, 205, 180, 140, 100, 80, 30, 5],
                markArea: {
                    data: [ [{
                    	name: 'Low quality clients',
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
                        xAxis: '100'
                    }], [{
                        name: 'High quality clients',
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