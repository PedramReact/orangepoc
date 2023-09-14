# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: uproc_dep_full {
  view_label: "uproc_dep"
  label: "uproc_dep"
  sql_table_name: `orange-looker.REF_TRD.UPROC_DEP_FULL` ;;

  dimension: domaine {
    type: string
    sql: IFNULL(${TABLE}.domaine,'NA') ;;
  }
  dimension: feature_team {
    type: string
    sql: case IFNULL(${TABLE}.feature_team,'NA')
    when 'Team A' then 'Team A'
    when 'Team B' then 'Team B'
    when 'Team C' then 'Team C'
    when 'Team D' then 'Team D'
    else 'NA'
    end;;

  }
  dimension: session {
    type: string
    sql: IFNULL(${TABLE}.session,'NA') ;;
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
    sql: case IFNULL(${TABLE}.statut,'NA')
      when 'Dev' then 'Dev'
      when 'Prod' then 'Prod'
      when 'Qualif' then 'Qualif'
      else 'NA'
      end;;

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
