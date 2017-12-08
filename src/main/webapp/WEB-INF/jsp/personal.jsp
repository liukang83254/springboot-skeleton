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
var standardVal = [90, 85, 90, 90, 88, 95, 96];
var radarData ;
if("Luke Chen" == name)
{
    radarData = [
                    {
                        value : standardVal,
                        name : refLineName
                    },
                     {
                        value : [67, 33, 17, 0, 100, 25, 50],
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
                        value : [83, 67, 100, 100, 100, 100, 50],
                        name : actLineName
                    }
                ]
}
else if("Stan Yu" == name)
{
    radarData = [
                    {
                        value : standardVal,
                        name : refLineName
                    },
                     {
                        value : [83, 33, 83, 25, 100, 20, 25],
                        name : actLineName
                    }
                ]
}
else if("Yong Liu" == name)
{
    radarData = [
                    {
                        value : standardVal,
                        name : refLineName
                    },
                     {
                        value : [100, 100, 83, 50, 100, 80, 75],
                        name : actLineName
                    }
                ]
}
else if("Shui Bian" == name)
{
    radarData = [
                    {
                        value : standardVal,
                        name : refLineName
                    },
                     {
                        value : [100, 100, 83, 100, 50, 20, 25],
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
                        value : [100, 100, 100, 50, 100, 80, 100],
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
	var radius = [40, 55];
	
	
	var seriesData = new Array();
	
	seriesData[0] = new Array();
	seriesData[1] = new Array();
	seriesData[2] = new Array();
	seriesData[3] = new Array();
	seriesData[4] = new Array();
	
	if("Luke Chen" == name)
	{
		seriesData[0][0] = 35;
	    seriesData[0][1] = 65;
	    
	    seriesData[1][0] = 53;
	    seriesData[1][1] = 57;
	    
	    seriesData[2][0] = 47;
	    seriesData[2][1] = 53;
	    
	    seriesData[3][0] = 53;
	    seriesData[3][1] = 47;
	    
	}
	else if("Sam Ma" == name)
	{
		seriesData[0][0] = 84;
	    seriesData[0][1] = 16;
	    
	    seriesData[1][0] = 85;
	    seriesData[1][1] = 15;
	    
	    seriesData[2][0] = 88;
	    seriesData[2][1] = 12;
	    
	    seriesData[3][0] = 85;
	    seriesData[3][1] = 15;
	    
	}
	else if("Stan Yu" == name)
	{
		seriesData[0][0] = 47;
        seriesData[0][1] = 53;
        
        seriesData[1][0] = 64;
        seriesData[1][1] = 36;
        
        seriesData[2][0] = 54;
        seriesData[2][1] = 46;
        
        seriesData[3][0] = 64;
        seriesData[3][1] = 36;
	    
	}
	else if("Yong liu" == name)
	{
		seriesData[0][0] = 86;
        seriesData[0][1] = 14;
        
        seriesData[1][0] = 96;
        seriesData[1][1] = 4;
        
        seriesData[2][0] = 93;
        seriesData[2][1] = 7;
        
        seriesData[3][0] = 96;
        seriesData[3][1] = 4;
	    
	}
	else if("Shui Bian" == name)
	{
		seriesData[0][0] = 90;
        seriesData[0][1] = 10;
        
        seriesData[1][0] = 75;
        seriesData[1][1] = 25;
        
        seriesData[2][0] = 92;
        seriesData[2][1] = 8;
        
        seriesData[3][0] = 25;
        seriesData[3][1] = 75;
	    
	}
	else if("Adele Adkins" == name)
	{
		seriesData[0][0] = 88;
        seriesData[0][1] = 12;
        
        seriesData[1][0] = 98;
        seriesData[1][1] = 2;
        
        seriesData[2][0] = 93;
        seriesData[2][1] = 7;
        
        seriesData[3][0] = 98;
        seriesData[3][1] = 2;
	    
	}
	else
	{
		seriesData[0][0] = 45;
        seriesData[0][1] = 55;
        
        seriesData[1][0] = 65;
        seriesData[1][1] = 35;
        
        seriesData[2][0] = 87;
        seriesData[2][1] = 13;
        
        seriesData[3][0] = 64;
        seriesData[3][1] = 36;
	    
	}
	
	for (var i=0 ; i<seriesData.length; i++) {
		var tmp = seriesData[i][0];
		seriesData[i][0] = seriesData[i][1];
		seriesData[i][1] = tmp;
	}
	
	option = {
	    legend: {
	    	show : true,
	        data:[
				'Opening credit','Loans credit','Trust Credit','Letter of Credit'
	        ],
	        bottom : '30%'
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
	                {name:'other', value: seriesData[0][0] , itemStyle : labelBottom},
	                {name:'Opening credit',value: seriesData[0][1], itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['30%', '30%'],
	            radius : radius,
	            x:'20%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value: seriesData[1][0], itemStyle : labelBottom},
	                {name:'Loans credit', value: seriesData[1][1], itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['50%', '30%'],
	            radius : radius,
	            x:'40%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value: seriesData[2][0], itemStyle : labelBottom},
	                {name:'Trust Credit', value: seriesData[2][1], itemStyle : labelTop}
	            ]
	        },
	        {
	            type : 'pie',
	            center : ['70%', '30%'],
	            radius : radius,
	            x:'60%', // for funnel
	            itemStyle : labelFromatter,
	            data : [
	                {name:'other', value: seriesData[3][0], itemStyle : labelBottom},
	                {name:'Letter of Credit', value: seriesData[3][1], itemStyle : labelTop}
	            ]
	        }
	    ],
	    animationEasing: 'quarticIn'
	};
	
	window.setTimeout('pieChart.setOption(option);', 100);
</script>

<jsp:include page="common/footer.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>