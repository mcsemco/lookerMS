view: fulfillment_investigation {
  sql_table_name: looker.fulfillment_data ;;

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: cor_imp {
    type: string
    sql: ${TABLE}.cor_imp ;;
  }

  dimension: mkts_under {
    type: string
    sql: ${TABLE}.mkts_under ;;
  }

  dimension: venues_under {
    type: string
    sql: ${TABLE}.venues_under ;;
  }

  dimension: cor_start_date {
    type: string
    sql: ${TABLE}.cor_start_date ;;
  }

  dimension: cor_end_date {
    type: string
    sql: ${TABLE}.cor_end_date ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: fulfillment_month {
    type: string
    sql: ${TABLE}.fulfillment_month ;;
  }

  dimension: market1 {
    type: string
    sql: ${TABLE}.market1 ;;
  }
  dimension: market2 {
    type: string
    sql: ${TABLE}.market2 ;;
  }
  dimension: network1 {
    type: string
    sql: ${TABLE}.network1 ;;
  }

  dimension: network2 {
    type: string
    sql: ${TABLE}.network2 ;;
  }

  dimension: network3 {
    type: string
    sql: ${TABLE}.network3 ;;
  }

  dimension: fulfillment_contract {
    type: string
    sql: ${TABLE}.fulfillment_contract ;;
  }

  dimension: network4 {
    type: string
    sql: ${TABLE}.network4 ;;
  }

  dimension: network5 {
    type: string
    sql: ${TABLE}.network5 ;;
  }

  dimension: network6 {
    type: string
    sql: ${TABLE}.network6 ;;
  }


#  measure: count {
#    type: count
#    drill_fields: [client_name]
#  }
}
