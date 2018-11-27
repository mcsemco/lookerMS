view: fulfillment_investigation {
  derived_table: {sql: select "abc" as first_value ;;}

  dimension: first_value {
    type: string
    sql: ${TABLE}.first_value ;;
  }

#  measure: count {
#    type: count
#    drill_fields: [client_name]
#  }
}
