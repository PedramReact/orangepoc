connection: "orange-dashboard-looker"

# include all the views
include: "/views/**/*.view.lkml"





explore: uproc_dep_full {
  join: uproc_dep_full__uprocs {
    view_label: " Uprocs"
    sql: LEFT JOIN UNNEST(${uproc_dep_full.uprocs}) as uproc_dep_full__uprocs ;;
    relationship: one_to_many
  }
  join: uproc_dep_full__uprocs__uproc_input {
    view_label: "Uproc Input"
    sql: LEFT JOIN UNNEST(${uproc_dep_full__uprocs.uproc_input}) as uproc_dep_full__uprocs__uproc_input ;;
    relationship: one_to_many
  }
}
