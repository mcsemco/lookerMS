view: monthly_spend_by_category {
  derived_table: {
    sql:
                SELECT month
                ,new_install
                ,uninstall
                ,upgrades
                ,repairs
                FROM looker.monthly_spend_by_category ;;
  }

  dimension: month {
    description: "Month"
    type: string
    sql: ${TABLE}.month ;;
  }

  measure: new_install {
    description: "New Install"
    type: sum
    sql: ${TABLE}.new_install ;;
  }

  measure: uninstall {
    description: "Uninstall"
    type: sum
    sql: ${TABLE}.uninstall ;;
  }

  measure: upgrades {
    description: "Upgrades"
    type: sum
    sql: ${TABLE}.upgrades ;;
  }

  measure: repairs {
    description: "Repairs"
    type: sum
    sql: ${TABLE}.repairs ;;
  }

}
