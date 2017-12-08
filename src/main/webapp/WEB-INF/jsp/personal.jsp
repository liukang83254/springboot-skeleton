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
<script src="<%=ctxPath%>/js/echarts.js"></script>
<style>
.checked {
    color: orange;
}
</style>
<div align="center" >
<div id="radar" style="margin-left: 12px; margin-top: 4px; width: 800px;height:300px;"></div>
<br/>
<div id="pie" style="margin-left: 12px; margin-top: 4px; width: 800px;height:280px;"></div>
</div>
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
               { name: 'Critical Financial Problems', max: 100},
               { name: 'Human Relations', max: 100},
               { name: 'Debt Burden', max: 100},
               { name: 'New Application Info.', max: 100},
               { name: 'Compliance Ability', max: 100}
            ];
var standardVal = [90, 90, 10, 90, 90, 90, 90];
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
            text: radarTitle + ' - ' + name,
            //left : 'center',
            top : '4'
        },
        tooltip : {},
        legend: {
            selectedMode : false,
            orient : 'vertical',
            align : 'right',
            textStyle:{
                fontWeight : 'bold',
                fontSize : 12,
                color: 'BLACK'
            },
            data: [refLineName, actLineName],
            right : '2px',
            top : '4'
        },
        radar: {
            name: {
                textStyle: {
                    color: 'BLACK',
                    //fontWeight : 'bold',
                    fontSize : 11,
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
        toolbox: {
            show: true,
            feature: {
                //saveAsImage: {}
            }
        },
        animationEasing: 'backInOut'
    };
radarChart.setOption(option);

var pieChart = echarts.init(document.getElementById('pie'));
var labelTop = {
	    normal : {
	        label : {
	            show : true,
	            position : 'center',
	            formatter : ''
	        },
	        labelLine : {
	            show : false
	        }
	    }
	};
	var labelFromatter = {
	    normal : {
	        label : {
	            formatter : function (params){
	                return 100 - params.value
	            },
	            textStyle: {
	                baseline : 'center'
	            }
	        }
	    },
	}
	var labelBottom = {
	    normal : {
	        color: '#ccc',
	        label : {
	            show : true,
	            position : 'center'
	        },
	        labelLine : {
	            show : false
	        }
	    },
	    emphasis: {
	        color: 'rgba(0,0,0,0)'
	    }
	};
	var radius = [25, 35];
	option = {
	    legend: {
	        x : 'center',
	        y : 'center',
	        data:[
				'Open Account','Loan','Affiance','Credit','Asset'
	        ]
	    },
	    title : {
	        text: 'Other Accessment'
	        //x: 'center'
	    },
	   
	    series : [
	        {
	            type : 'pie',
	            center : ['10%', '30%'],
	            radius : radius,
	            x: '0%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value:46, itemStyle : labelBottom},
	                {name:'Open Account', value:54,itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['30%', '30%'],
	            radius : radius,
	            x:'20%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value:56, itemStyle : labelBottom},
	                {name:'Loan', value:44,itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['50%', '30%'],
	            radius : radius,
	            x:'40%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value:65, itemStyle : labelBottom},
	                {name:'Affiance', value:35,itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['70%', '30%'],
	            radius : radius,
	            x:'60%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value:70, itemStyle : labelBottom},
	                {name:'Credit', value:30,itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['90%', '30%'],
	            radius : radius,
	            x:'80%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value:73, itemStyle : labelBottom},
	                {name:'Asset', value:27,itemStyle : labelTop}
	            ]
	        }
	    ],
	    animationEasing: 'quarticIn'
	};
	
	window.setTimeout('pieChart.setOption(option);', 1500);
</script>

<jsp:include page="common/footer.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>