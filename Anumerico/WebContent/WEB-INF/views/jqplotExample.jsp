<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<title>mperry Line Charts</title>
<script type="text/javascript" src="${ctx}/include/jqplot/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/include/jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript"
	src="${ctx}/include/jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript"
	src="${ctx}/include/jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<link rel="stylesheet" type="text/css"
	hrf="${ctx}/include/jqplot/jquery.jqplot.min.css" />
<style>
.chart {
	height: 400px;
	width: 700px;
}
</style>
</head>

<body>

	<select id="select-chart">
		<option value="timber" SELECTED>Timber</option>
		<option value="carbon">Carbon</option>
	</select>
	<div id="chart-carbon" class="chart"></div>
	<div id="chart-timber" class="chart"></div>

	<script class="code" type="text/javascript">
var plot1, plot2; 
var carbonData = [
    [['2004-08-12 4:00PM',4], ['2024-09-12 4:00PM',6.5], ['2048-10-12 4:00PM',5.7], ['2067-12-12 4:00PM',3.2]],
    [['2004-08-12 4:00PM',5], ['2024-09-12 4:00PM',7.5], ['2048-10-12 4:00PM',9], ['2067-12-12 4:00PM',9.2]],
];
var timberData = [
    [['2004-08-12 4:00PM',6], ['2024-09-12 4:00PM',9.5], ['2048-10-12 4:00PM',5.5], ['2067-12-12 4:00PM',2.2]],
    [['2004-08-12 4:00PM',3], ['2024-09-12 4:00PM',5.5], ['2048-10-12 4:00PM',5.7], ['2067-12-12 4:00PM',4.2]],
];
var seriesLabels = [
    {'label': 'Business as Usual' },
    {'label': 'Alternative Scenario' }
];
$(document).ready(function(){
  options = {
      grid: {
          backgroundColor: "white",
      },
      series: seriesLabels, 
      axesDefaults: {
          labelRenderer: $.jqplot.CanvasAxisLabelRenderer
      },
      seriesDefaults: { // applies to all rows
          lineWidth: 2,
          style: 'square',
          rendererOptions: { smooth: true }
      },
      highlighter: {
          show: true,
          sizeAdjust: 7.5
      },
      legend: {
          renderer: $.jqplot.EnhancedLegendRenderer,
          show: true,
          showLabels: true,
          location: 'ne',
          placement: 'outside',
          fontSize: '11px',
          fontFamily: ["Lucida Grande","Lucida Sans Unicode","Arial","Verdana","sans-serif"],
          rendererOptions: {
              seriesToggle: 'normal'
          }
      }
  };
  carbonPlot = $.jqplot('chart-carbon', carbonData, $.extend(options, {
      title: 'Carbon Sequestration over time',
      axes: {
        xaxis: {
          label: "Time",
          renderer: $.jqplot.DateAxisRenderer,
          tickOptions: {formatString:'%Y'},
          min:'Jan 01, 2000 8:00AM', 
          tickInterval:'10 years',
          pad: 0
        },
        yaxis: {
          label: "Carbon",
          tickOptions: {formatString:'%d tons'}
        }
      }
  }));
  timberPlot = $.jqplot('chart-timber', timberData, $.extend(options, {
      title: 'Timber Harvest over time',
      axes: {
        xaxis: {
          label: "Time",
          renderer: $.jqplot.DateAxisRenderer,
          tickOptions: {formatString:'%Y'},
          min:'Jan 01, 2000 8:00AM', 
          tickInterval:'10 years',
          pad: 0
        },
        yaxis: {
          label: "Timber",
          tickOptions: {formatString:'%d bdft'}
        }
      }
  }));
  $('#select-chart').change( function(e) {
     var chartId = "#chart-" + $(this).val();
     $('.chart:visible').hide();
     $(chartId).fadeIn();
  });
  $('#select-chart').change();
});
</script>
</body>
</html>
