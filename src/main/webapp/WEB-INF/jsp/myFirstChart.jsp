<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>


<!DOCTYPE html> 
<html> 
  <head> 
    <meta charset="utf-8"> 
    <title>My first chart</title>
    <script type="text/javascript" src="<c:url value="/resource/js/jquery-1.10.2.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resource/js/highcharts.js" />"></script>
  </head> 
  <body> 
    <div id="container"></div>
    <script>
    $(function () {
      $('#container').highcharts({
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
  </body> 
</html>
