view: rp1_sq_footage_forecast {
  derived_table: {
                sql:
                SELECT month
                ,ahead_of_plan
                ,on_schedule
                ,at_risk
                ,delayed_on_hold
                FROM looker.sq_footage_forecast ;; }

   dimension: month {
    description: "Month"
    type: string
    sql: ${TABLE}.month ;;
   }

  measure: ahead_of_plan {
    description: "Ahead of plan"
    type: sum
    sql: CASE WHEN ${TABLE}.ahead_of_plan > 21 THEN ${TABLE}.ahead_of_plan END ;;
  }

  measure: ahead_of_plan_screen {
    description: "Ahead of plan"
    type: sum
    sql: CASE WHEN ${TABLE}.ahead_of_plan <= 21 THEN ${TABLE}.ahead_of_plan END ;;
  }

  measure: on_schedule {
    description: "On schedule"
    type: sum
    sql: CASE WHEN ${TABLE}.on_schedule > 21 THEN ${TABLE}.on_schedule END ;;
  }

  measure: on_schedule_screen {
    description: "On schedule"
    type: sum
    sql: CASE WHEN ${TABLE}.on_schedule <= 21 THEN ${TABLE}.on_schedule END ;;
  }

  measure: at_risk {
    description: "At risk"
    type: sum
    sql: CASE WHEN ${TABLE}.at_risk > 21 THEN ${TABLE}.at_risk END ;;
  }

  measure: at_risk_screen {
    description: "At risk"
    type: sum
    sql: CASE WHEN ${TABLE}.at_risk <= 21 THEN ${TABLE}.at_risk END ;;
  }

  measure: delayed_on_hold {
    description: "Delayed/On hold"
    type: sum
    sql: CASE WHEN ${TABLE}.delayed_on_hold > 21 THEN ${TABLE}.delayed_on_hold END ;;
  }

  measure: delayed_on_hold_screen {
    description: "Delayed/On hold"
    type: sum
    sql: CASE WHEN ${TABLE}.delayed_on_hold <= 21 THEN ${TABLE}.delayed_on_hold END ;;
  }

  set: detail {
    fields: [month, ahead_of_plan, on_schedule, at_risk, delayed_on_hold]
  }
}
