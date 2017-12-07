<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%
 String ctxPath = request.getContextPath();
 String name = request.getParameter("name");
%>
<jsp:include page="common/header.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<c:set var="ctxPath" value="<%=ctxPath%>"></c:set>
<jsp:include page="common/navigation.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<script src="<%=ctxPath%>/js/echarts.js"></script>
<style>
.checked {
    color: orange;
}
</style>

<div id="radar" style="margin-left: 12px; margin-top: 12px; width:800px;height:480px;"></div>

<script type="text/javascript">

var name = '<%=name%>';

var radarChart = echarts.init(document.getElementById('radar'));
// Radar properties
var radarTitle = "Evaluation Radar";
var refLineName = "Reference Value";
var actLineName = "Customer Value";

var indicators = [
	           { name: 'Identity Feature', max: 100},
	           { name: 'Credit History', max: 100},
	           { name: 'Major financial problems', max: 100},
	           { name: 'Human relations', max: 100},
	           { name: 'Debt burden', max: 100},
	           { name: 'New Application Info', max: 100},
	           { name: 'Compliance Ability', max: 100}
	        ];

var standardVal = [90, 90, 90, 90, 90, 90, 90];

var radarData ;
if("Luke Chen" == name)
{
	radarData = [
		            {
		                value : standardVal,
		                name : refLineName
		            },
		             {
		                value : [50, 14, 28, 31, 42, 60, 90],
		                name : actLineName
		            }
		        ]
}
else if("Sam Ma" == name)
{
	radarData = [
		            {
		            	value : standardVal,
		                name : refLineName
		            },
		             {
		                value : [87, 33, 76, 98, 45, 60, 90],
		                name : actLineName
		            }
		        ]
}
else
{
	radarData = [
		            {
		            	value : standardVal,
		                name : refLineName
		            },
		             {
		            	value : [56, 90, 87, 100, 90, 60, 90],
		                name : actLineName
		            }
		        ]
}

var option = {
	    title: {
	        text: name + ' - ' + radarTitle,
	        left : 'center',
	    	top : '-5'
	    },
	    legend: {
	    	selectedMode : false,
	    	orient : 'vertical',
	    	align : 'right',
	    	textStyle:{
	    		fontWeight : 'bold',
	    		fontSize : 14,
	    		color: 'BLACK'
	    	},
	        data: [refLineName, actLineName],
	        right : '2px',
	        bottom : '90%'
	    },
	    radar: {
	        name: {
	            textStyle: {
	                color: 'BLACK',
		    		fontWeight : 'bold',
		    		fontSize : 14,
	                borderRadius: 3,
	                padding: [3, 5]
	           }
	        },
	        indicator: indicators
	    },
	    series: [{
	        type: 'radar',
	        data : radarData,
	        animationDelay: function (idx) {
	            return idx * 618;
	        }
	    }],
	    animationEasing: 'backInOut'
	};

radarChart.setOption(option);

</script>

<jsp:include page="common/footer.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>