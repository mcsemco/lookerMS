view: rp1_sq_footage_forecast {
  sql_table_name: looker.sq_footage_forecast ;;

   dimension: month {
    description: "Month"
    type: string
    sql: ${TABLE}.month ;;
   }

  dimension: on_schedule_test {
    type: yesno
    sql:  ${month} = 'OCT' ;;
  }

  measure: ahead_of_plan {
    description: "Ahead of plan"
    type: sum

   # filters: {
   #   field: on_schedule_test
   #   value: "yes"
   # }

    drill_fields: [detail*]
    sql: ${TABLE}.ahead_of_plan ;;
  }

  measure: on_schedule {
    description: "On schedule"
    type: sum
    drill_fields: [detail*]
    sql: ${TABLE}.on_schedule ;;
  }

  measure: at_risk {
    description: "At risk"
    type: sum
    drill_fields: [detail*]
    sql: ${TABLE}.at_risk ;;
  }

  measure: at_risk2 {
    description: "At risk"
    type: sum
    drill_fields: [detail*]
    sql: ${TABLE}.at_risk ;;
  }

  measure: delayed_on_hold {
    description: "Delayed/On hold"
    type: sum
    drill_fields: [detail*]
    sql: ${TABLE}.delayed_on_hold ;;
  }

  set: detail {
    fields: [month, ahead_of_plan, on_schedule, at_risk, delayed_on_hold]
  }

  set: detail1 {
    fields: [month, ahead_of_plan]
  }

  set: detail2 {
    fields: [month, on_schedule]
  }

  set: detail3 {
    fields: [month, at_risk]
  }

  set: detail4 {
    fields: [month, delayed_on_hold]
  }

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: rp1_sq_footage_forecast {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
