view: fulfillment_investigation {
  derived_table: {sql: select "abc" ;;}

 # dimension: client_code {
 #   type: string
 #   sql: ${TABLE}.client_code ;;
 # }

#  measure: count {
#    type: count
#    drill_fields: [client_name]
#  }
}
