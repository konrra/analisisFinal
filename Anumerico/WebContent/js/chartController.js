$(document).ready(function() {

	createChart("rest/visitors/hits");

});

function createChart(url) {

	var jsonVisitorHits = null;
	var customDateFormat = "%d.%m.%y";

	/* get the JSON data from an URL */
	$.ajax({
		async : false,
		url : url,
		dataType : "json",
		success : function(data) {
			jsonVisitorHits = data;
		}
	});

	/* Convert JSON array to an array, that fits to jqPlot */
	var serie = [];

	if (jsonVisitorHits) {
		for ( var i = 0; i < jsonVisitorHits.visitorCounter.data.length; i++) {
			serie.push([jsonVisitorHits.visitorCounter.data[i].item[0],
					    jsonVisitorHits.visitorCounter.data[i].item[1]]);
		}
	}

	$.jqplot('chartPlaceholder', [ serie ], {

		title : 'Visitors',

		/* show the legend in northeast and label it*/
		legend : {
			show : true,
			location : 'ne',
			xoffset : 55,
			labels : [ 'hits' ]
		},
		axes : {
			xaxis : {
				/* render x-axis as date, needs dateAxisRenderer plugin */
				renderer : $.jqplot.DateAxisRenderer,
				tickOptions : {
					formatString : customDateFormat
				}
			}
		},

		/* makes a smooth curve */
		seriesDefaults : {
			rendererOptions : {
				smooth : true
			}
		}
	});
}