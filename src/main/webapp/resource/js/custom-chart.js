/* Custom functions that help in getting remote data and drawing a chart to a div */

function createNewLineChart(divId) {
    var chart = {
        options: {
            chart: {
                renderTo: divId
            }
        }
    };
    chart = jQuery.extend(true, {}, getBaseChart(), chart);
    
    chart.init(chart.options);
    return chart;
}


function getBaseChart() {

    var baseChart = {
        highchart: null,
        defaults: {

            chart: {
                renderTo: null,
                shadow: true,
                borderColor: '#ebba95',
                borderWidth: 2,
                defaultSeriesType: 'line',
                width: 400,
                height: 250
            },
            credits: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            title: {
                text: null,
                x: -20,
                style: {
                    color: '#3366cc',
                    fontWeight: 'bold',
                    fontSize: '16px',
                    fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                }
            },
            xAxis: {
                categories: [],
                gridLineDashStyle: 'dot',
                gridLineColor: '#197f07',
                gridLineWidth: 1,
                tickColor: '#ff40ff',
                tickWidth: 2,
                title: {
                    text: null,
                    style: {
                        color: '#3366cc',
                        fontWeight: 'bold',
                        fontSize: '12px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                },
                labels: {
                    rotation: -25,
                    align: 'right',
                    style: {
                        color: '#3366cc',
                        fontWeight: 'normal',
                        fontSize: '9px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                gridLineWidth: 1,
                gridLineColor: '#197F07',
                gridLineDashStyle: 'dot',
                title: {
                    text: null,
                    style: {
                        color: '#3366cc',
                        fontWeight: 'bold',
                        fontSize: '12px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                },
                labels: {
                    style: {
                        color: '#3366cc',
                        fontSize: '12px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                },
                plotLines: [{
                    value: 0,
                    width: 1
                }]
            },
            tooltip: {
                crosshairs: true,
                formatter: function() {
                    return '<b>'+ this.series.name +'</b><br/>'+
                        this.x +': '+ this.y;
                }
            },
            legend: {
                layout: 'horizontal',
                backgroundColor: '#ffffff',
                align: 'center',
                verticalAlign: 'top',
                borderWidth: 1,
                shadow: true,
                style: {
                    color: '#3366cc',
                    fontWeight: 'bold',
                    fontSize: '9px',
                    fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                }
            },
            series: []

        },

        // here you'll merge the defaults with the object options
        init: function(options) {
            this.highchart = jQuery.extend({}, this.defaults, options);
        },

        create: function() {
            new Highcharts.Chart(this.highchart);
        }

    };
    return baseChart;
}//function end


function getRemoteDataDrawChart(url, linechart) {

    $.ajax({
        url: url,
        dataType: 'json',
        success: function(data) {

            var categories = data.categories;
            var title = data.title;
            var yTitle = data.yAxisTitle;
            var xTitle = data.xAxisTitle;
            var divId =  data.divId;

            //populate the lineChart options (highchart)
            linechart.highchart.xAxis.categories = categories;
            linechart.highchart.title.text = title;
            linechart.highchart.yAxis.title.text = yTitle;
            linechart.highchart.xAxis.title.text = xTitle;
            linechart.highchart.chart.renderTo = divId;

            $.each(data.series, function(i, seriesItem) {
                console.log(seriesItem) ;
                var series = {
                    data: []
                };
                series.name = seriesItem.name;
                series.color = seriesItem.color;

                $.each(seriesItem.data, function(j, seriesItemData) {
                    console.log("Data (" + j +"): "+seriesItemData) ;
                    series.data.push(parseFloat(seriesItemData));
                });

                linechart.highchart.series[i] = series;
            });

            //draw the chart
            linechart.create();
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        },
        cache: false
    });
} //function end
function createNewPieChart(divId) {
	
    var chart = {
        options: {
            chart: {
                renderTo: divId
            }
        }
    };
    chart = jQuery.extend(true, {}, getPieChart(), chart);
    
    chart.init(chart.options);
    return chart;
}

function getPieChart() {

	var pieChart = {
		        highchart: null,
		        piechart: {
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
		        },

		        init: function(options) {
		            this.highchart = jQuery.extend({}, this.piechart, options);
		        },

		        create: function() {
		            new Highcharts.Chart(this.highchart);
		        }

		    };
		    return pieChart;
}

function getDrawPieChart(url, piechart) {
	$.ajax({
        url: url,
        dataType: 'json',
        success: function(data) {
            //draw the chart
        	piechart.create();
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        },
        cache: false
    });
}

function drawPieChart(divId) {
	alert(divId);
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
	
	
}
