view: ctr_by_day_of_week {
  derived_table: {
                sql:
                SELECT day_of_week, ctr FROM looker.ctr_by_day_of_week ;;
                }

  dimension: day_of_week {
    description: "Day of week"
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  measure: ctr {
    description: "CTR"
    value_format: "0.00\%"
    type: sum
    sql: ${TABLE}.ctr ;;
  }
}
