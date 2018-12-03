view: ctr_by_day_of_week {
  derived_table: {
                sql:
                SELECT day_of_week, ctr FROM looker.ctr_by_day_of_week
                ORDER BY CASE
                  WHEN day_of_week = 'MON' then 1
                  WHEN day_of_week = 'TUE' then 2
                  WHEN day_of_week = 'WED' then 3
                  WHEN day_of_week = 'THU' then 4
                  WHEN day_of_week = 'FRI' then 5
                  WHEN day_of_week = 'SAT' then 6
                  ELSE 7
                END ;;
                }

  dimension: day_of_week {
    description: "Day of week"
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  measure: ctr {
    description: "CTR"
    value_format: "0.00\%"
    type: sum
    sql: ${TABLE}.ctr ;;
  }
}
