view: uproc_dep_full__uprocs {
view_label:  "uprocs"
label: "uprocs"
  dimension: uproc {
    type: string
    sql: uproc ;;
  }
  dimension: uproc_dep_full__uprocs {
    type: string
    hidden: yes
    sql: uproc_dep_full__uprocs ;;
  }
  dimension: uproc_input {
    hidden: yes
    sql: uproc_input ;;
  }
}
