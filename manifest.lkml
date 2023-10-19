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
  id: "@{VIS_ID}"
  url: "https://storage.cloud.google.com/org_viz_js/js_looker/OrgCustGraphVisV6.js"
  # sri_hash: "59d48907f248007aff0407562b86514ec095b77b"
  label: "@{VIS_LABEL}"

}
