view: uproc_dep {
  sql_table_name: `REF_TRD.UPROC_DEP` ;;

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }
  dimension: uprocs {
    hidden: yes
    sql: ${TABLE}.uprocs ;;
  }
  measure: count {
    type: count
  }
}

view: uproc_dep__uprocs {

  dimension: uproc {
    type: string
    sql: uproc ;;
  }
  dimension: uproc_dep__uprocs {
    type: string
    hidden: yes
    sql: uproc_dep__uprocs ;;
  }
  dimension: uproc_input {
    hidden: yes
    sql: uproc_input ;;
  }
}

view: uproc_dep__uprocs__uproc_input {

  dimension: uproc_dep__uprocs__uproc_input {
    type: string
    sql: uproc_dep__uprocs__uproc_input ;;
  }
}
