view: ctr_by_day_of_week {
  sql_table_name:
                SELECT day_of_week, ctr FROM looker.ctr_by_day_of_week
                ORDER BY CASE
                  WHEN day_of_week = 'MON' then 1
                  WHEN ThingCategory = 'TUE' then 2
                  WHEN ThingCategory = 'WED' then 3
                  WHEN ThingCategory = 'THU' then 4
                  WHEN ThingCategory = 'FRI' then 5
                  WHEN ThingCategory = 'SAT' then 6
                  ELSE 7
                END ;;

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
