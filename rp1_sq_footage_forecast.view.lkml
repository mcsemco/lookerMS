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
    sql: ${TABLE}.ahead_of_plan ;;
  }

  measure: ahead_of_plan_percent {
    description: "Ahead of plan"
    type: sum
    value_format: "0\%"
    sql: ${TABLE}.ahead_of_plan ;;
  }

  measure: on_schedule {
    description: "On schedule"
    type: sum
    sql: ${TABLE}.on_schedule ;;
  }

  measure: at_risk {
    description: "At risk"
    type: sum
    sql: ${TABLE}.at_risk ;;
  }

  measure: delayed_on_hold {
    description: "Delayed/On hold"
    type: sum
    sql: ${TABLE}.delayed_on_hold ;;
  }

  set: detail {
    fields: [month, ahead_of_plan, on_schedule, at_risk, delayed_on_hold]
  }
}
