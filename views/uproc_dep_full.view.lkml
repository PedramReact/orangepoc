# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: uproc_dep_full {
  hidden: yes
    join: uproc_dep_full__uprocs {
      view_label: "Uproc Dep Full: Uprocs"
      sql: LEFT JOIN UNNEST(${uproc_dep_full.uprocs}) as uproc_dep_full__uprocs ;;
      relationship: one_to_many
    }
    join: uproc_dep_full__uprocs__uproc_input {
      view_label: "Uproc Dep Full: Uprocs Uproc Input"
      sql: LEFT JOIN UNNEST(${uproc_dep_full__uprocs.uproc_input}) as uproc_dep_full__uprocs__uproc_input ;;
      relationship: one_to_many
    }
}
view: uproc_dep_full {
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
}

view: uproc_dep_full__uprocs {

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

view: uproc_dep_full__uprocs__uproc_input {

  dimension: uproc_dep_full__uprocs__uproc_input {
    type: string
    sql: uproc_dep_full__uprocs__uproc_input ;;
  }
}
