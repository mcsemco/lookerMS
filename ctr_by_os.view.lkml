view: ctr_by_os {
  derived_table: {
    sql: SELECT os, ctr FROM looker.ctr_by_os ;;
  }

  dimension: os {
    description: "OS"
    type: string
    sql: ${TABLE}.os ;;
  }

  measure: ctr {
    description: "CTR"
    value_format: "0.00\%"
    type: sum
    sql: ${TABLE}.ctr ;;
  }
}
