# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: uproc_dep_full {
  view_label: "uproc_dep"
  label: "uproc_dep"
  sql_table_name: `orange-looker.REF_TRD.UPROC_DEP_FULL` ;;

  dimension: domaine {
    type: string
    sql: ${TABLE}.domaine ;;
  }
  dimension: feature_team {
    type: string
    sql: ${TABLE}.feature_team ;;
  }
  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }
  dimension_group: session_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.session_end ;;
  }
  dimension_group: session_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.session_start ;;
  }
  dimension: statut {
    type: string
    sql: ${TABLE}.statut ;;
  }
  dimension: uprocs {
    hidden: yes
    sql: ${TABLE}.uprocs ;;
  }
  measure: count {
    type: count
  }

  #New Dev

}
