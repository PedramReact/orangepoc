
project_name: "orange-dashboard-looker"

constant: VIS_LABEL {
  value: "Orange-Vis-Looker"
  export: override_optional
}



constant: VIS_ID {
  value: "Orange-Vis-Looker000"
  export:  override_optional
}

visualization: {
  id: "@{VIS_ID}"
  label: "@{VIS_LABEL}"
  url: "https://github.com/FerdaousBz/Orange-vis/blob/main/graph.js"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"]

  }
visualization: {
  id: "Vis_looker"
  label: "Vis_looker"
  url: "https://marketplace-api.looker.com/viz-dist/liquid_fill_gauge.js"
}
visualization: {
  id: "Vis_test_Pedram"
  label: "Vis_test_Pedram"
  url: "https://storage.cloud.google.com/org_viz_js/js_looker/test_pedram.js"
}
