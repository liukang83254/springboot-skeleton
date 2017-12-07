<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Application Quality Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link href="<c:url value="/resource/css/bootstrap.min.css" />" rel="stylesheet"  media="screen" />
    <link href="<c:url value="/resource/css/cerulean.bootstrap.min.css" />" rel="stylesheet"  media="screen" />
    <link href="<c:url value="/resource/css/stickyfooter.css" />" rel="stylesheet"  media="screen" />
    <link href="<c:url value="/resource/css/container.css" />" rel="stylesheet"  media="screen" />

    <script type="text/javascript" src="<c:url value="/resource/js/jquery-1.10.2.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resource/js/highcharts.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resource/js/exporting.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resource/js/custom-chart.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resource/modules/variable-pie.js" />"></script>
    
    <script type="text/javascript">
        var contextPath = '<c:out value="${pageContext.request.contextPath}"/>';
       
        $(document).ready(function() {
            getRemoteDataDrawChart(contextPath + '/linechart1', createNewLineChart('chart1-container'));
            getRemoteDataDrawChart(contextPath + '/linechart2', createNewLineChart('chart2-container'));
            getRemoteDataDrawChart(contextPath + '/linechart3', createNewLineChart('chart3-container'));
            //getDrawPieChart(contextPath + '/piechart4', createNewPieChart('chart4-container')); 
        });   
        
    </script>
    
    
    
    <script>
    $(function () {
      $('#chart4-container').highcharts({
          chart: {
          	renderTo: 'Chart',
              defaultSeriesType: 'pie'
          },
          title: {
              text: 'Countries compared by population density and total area.'
          },
          tooltip: {
              headerFormat: '',
              pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
                  'Area (square km): <b>{point.y}</b><br/>' +
                  'Population density (people per square km): <b>{point.z}</b><br/>'
          },
          series: [{
              minPointSize: 10,
              innerSize: '20%',
              zMin: 0,
              name: 'countries',
              data: [{
                  name: 'Spain',
                  y: 505370,
                  z: 92.9
              }, {
                  name: 'France',
                  y: 551500,
                  z: 118.7
              }, {
                  name: 'Poland',
                  y: 312685,
                  z: 124.6
              }, {
                  name: 'Czech Republic',
                  y: 78867,
                  z: 137.5
              }, {
                  name: 'Italy',
                  y: 301340,
                  z: 201.8
              }, {
                  name: 'Switzerland',
                  y: 41277,
                  z: 214.5
              }, {
                  name: 'Germany',
                  y: 357022,
                  z: 235.6
              }]
          }]
      });
    });
    </script>
</head>
<body>
<div id="wrap">
<!-- NAVBAR -->
<!-- Docs master nav -->
<div class="custom-override">
    <div class="container">
        <a href="<c:url value='/charts'/>" class="navbar-brand"><small>Highcharts</small></a>
        <a href="<c:url value='/charts'/>" class="navbar-brand"><small>Account Analysis</small></a>
        <a href="<c:url value='/charts'/>" class="navbar-brand"><small>Loan Analysis</small></a>
        <a href="<c:url value='/charts'/>" class="navbar-brand"><small>Contact Us</small></a>
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="nav-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav pull-left">
            </ul>
        </div>
    </div>
</div><br/><br/><br/><br/>

<!-- CONTAINER -->
<div class="container">
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 1</h3>
                    </div>
                    <div id="chart1-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 2</h3>
                    </div>
                    <div id="chart2-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 3</h3>
                    </div>
                    <div id="chart3-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 4</h3>
                    </div>
                    <div id="chart4-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
        </div>
    </div>
</div>

</div><!--/CONTAINER -->
<div id="push"></div>
</div><!--/WRAP -->
<!--
 <div class="panel panel-warning">
    <div class="panel-heading">
        <h3 class="panel-title">Highchart Chart 4</h3>
    </div>
    <div id="chart4-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
</div>
 -->


<!-- Footer
=================================-->
<div id="footer">
    <div class="container">
        <div class="row">
            <p class="text-center"><small>Copyright &copy; 2013 <a href="http://some.link.com">SomeLink Inc.</a> All rights reserve.</small></p>
        </div>

    </div>
</div>

<!-- /Footer
=================================-->

</body>
</html>
