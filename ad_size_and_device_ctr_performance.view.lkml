view: ad_size_and_device_ctr_performance {
  sql_table_name: looker.ad_size_and_device_ctr_performance ;;

  dimension: screen {
    description: "Screen"
    type: string
    sql: ${TABLE}.screen ;;
  }

  measure: desktop {
    description: "Desktop"
    value_format: "0\%"
    type: sum
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

}
