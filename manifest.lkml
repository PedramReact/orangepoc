project_name: "orange-dashboard-looker"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: VIS_LABEL {
  value: "custom-vis-orange-label"
  export: override_optional
}
constant: VIS_ID {
  value: "custom-vis-orange-id"
  export:  override_optional
}
visualization: {
  id: "{{VIS_ID}}"
  url: "https://raw.githubusercontent.com/FerdaousBz/Orange-vis/main/graph.js"
  # sri_hash: "59d48907f248007aff0407562b86514ec095b77b"
  label: "{{VIS_LABEL}}"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"]

}
