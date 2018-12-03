view: ad_size_and_device_ctr_performance {
  sql_table_name: looker.ad_size_and_device_ctr_performance ;;

  dimension: desktop {
    description: "Desktop"
    type: number
    sql: ${TABLE}.desktop ;;
  }

  dimension: phone {
    description: "Phone"
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension: tablet {
    description: "Tablet"
    type: number
    sql: ${TABLE}.tablet ;;
  }

  dimension: screen {
    description: "Screen"
    type: string
    sql: ${TABLE}.screen ;;
  }

}
