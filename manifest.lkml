
project_name: "orange-dashboard-looker"

constant: VIS_LABEL {
  value: "Test_11102023_label"
  export: override_optional
}



constant: VIS_ID {
  value: "Test_11102023"
  export:  override_optional
}



#visualization: {
#  id: "@{VIS_ID}"
#  url: "https://marketplace-api.looker.com/viz-dist/liquid_fill_gauge.js"
#  label: "@{VIS_LABEL}"
#}

visualization: {
  id: "@{VIS_ID}"
  #id: "Test_11102023"
  #label: "Test_11102023"
  label: "@{VIS_LABEL}"
  url: "https://storage.cloud.google.com/org_viz_js/js_looker/graph.js"
 # url: "https://raw.githubusercontent.com/PedramReact/TestOrgVis/main/NewGraph.js"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js", "https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"]
  }
