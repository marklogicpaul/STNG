//app.js - generated by MarkLogic Appbuilder 2.0 2015-07-06T17:33:59.797607-04:00

ML.controller.init(controller_config);

var search = ML.createSearch("search");
  
var sidebar = ML.createSidebar("sidebar", sidebar_config);
  
var pie_1 = ML.chartWidget("widget-1", "pie", pie_config_1);
//var bar_2 = ML.chartWidget("widget-2", "bar", bar_config_2);


var results = ML.createResults("results", results_config);          
  


ML.controller.loadData();

