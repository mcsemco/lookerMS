view: ad_size_and_device_ctr_performance {
  sql_table_name: looker.ad_size_and_device_ctr_performance ;;

  dimension: desktop {
    description: "Desktop"
    type: number
    sql: ${TABLE}.desktop ;;
  }

  measure: phone {
    description: "Phone"
    value_format: "0\%"
    type: sum
    sql: ${TABLE}.phone ;;
  }

  measure: tablet {
    description: "Tablet"
    value_format: "0\%"
    type: sum
    sql: ${TABLE}.tablet ;;
  }

  measure: screen {
    description: "Screen"
    value_format: "0\%"
    type: sum
    sql: ${TABLE}.screen ;;
  }

}
