view: ctr_by_device {
  derived_table: {
    sql: SELECT device, ctr FROM looker.ctr_by_device ;;
  }

  dimension: device {
    description: "Device"
    type: string
    sql: ${TABLE}.device ;;
  }

  measure: ctr {
    description: "CTR"
    value_format: "0.00\%"
    type: sum
    sql: ${TABLE}.ctr ;;
  }
}
