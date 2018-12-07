view: dstillery_wrap {
 derived_table: {
  sql: SELECT  hit_date
              ,advertiser_id
              ,advertiser_name
              ,campaign_id
              ,campaign_name
              ,target_group_id
              ,creative_id
              ,creative_name
              ,pub_adsize
              ,device_class
              ,device_make
              ,device_os
              ,impressions
              ,clicks
              ,advertiser_cost
        FROM looker.dstillery_wrap
        WHERE device_os != 'NULL' ;;
              }

  dimension: hit_date  {
    description: "Hit Date"
    type: string
    sql: ${TABLE}.hit_date ;;
  }

  dimension: advertiser_id {
    description: "Advertiser ID"
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: advertiser_name {
    description: "Advertiser Name"
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }

  dimension: campaign_id {
    description: "Campaign ID"
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    description: "Campaign Name"
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: target_group_id {
    description: "Target Group ID"
    type: string
    sql: ${TABLE}.target_group_id ;;
  }

  dimension: creative_id {
    description: "Creative ID"
    type: string
    sql: ${TABLE}.creative_id ;;
  }

  dimension: creative_name {
    description: "Creative Name"
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: pub_adsize {
    description: "Pub Adsize"
    type: string
    sql: ${TABLE}.pub_adsize ;;
  }

  dimension: device_class {
    description: "Device Class"
    type: string
    sql: UPPER(${TABLE}.device_class) ;;
  }

  dimension: device_make {
    description: "Device Make"
    type: string
    sql: ${TABLE}.device_make ;;
  }

  dimension: device_os {
    description: "Device OS"
    type: string
    sql: UPPER(${TABLE}.device_os) ;;
  }

  dimension: advertiser_cost {
    description: "Advertiser Cost"
    type: number
    sql: ${TABLE}.advertiser_cost ;;
  }

  dimension: bad_impressions {
    description: "Impressions"
    type: number
    sql: ${TABLE}.impressions = 0 ;;
  }

  dimension: date  {
    description: "Day Of Week"
    type: date
    sql: CONCAT(SUBSTRING(hit_date, 0 , 5), '-', SUBSTRING(hit_date, 5 , 2), '-', SUBSTRING(hit_date, 7 , 2))  ;;
  }

  dimension_group: day_of_week {
    label: "Day Of Week"
    type: time
    timeframes: [day_of_week]
    sql: ${date} ;;
  }

  measure: impressions {
    description: "Impressions"
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: clicks {
    description: "Clicks"
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: ctr {
    description: "CTR"
    type: sum
    value_format: "0.00\%"
    sql: CASE WHEN ${TABLE}.clicks >= 0 AND ${TABLE}.impressions = 0 THEN NULL
              ELSE (${TABLE}.clicks / ${TABLE}.impressions)
              END ;;
    drill_fields: [detail*]
  }

  measure: ctr_count {
    description: "CTR Count"
    type: count_distinct
    sql: ${TABLE}.clicks >= 0 AND ${TABLE}.impressions = 0 ;;
  }
  set: detail {
    fields: [ device_class, ctr]
  }
}
