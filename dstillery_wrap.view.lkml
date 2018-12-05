view: dstillery_wrap {
 derived_table: { sql: SELECT * FROM looker.dstillery_wrap GROUP BY device_class ;; }

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
    sql: ${TABLE}.device_class ;;
  }

  dimension: device_make {
    description: "Device Make"
    type: string
    sql: ${TABLE}.device_make ;;
  }

  dimension: device_os {
    description: "Device OS"
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: impressions {
    description: "Impressions"
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: clicks {
    description: "Clicks"
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: advertiser_cost {
    description: "Advertiser Cost"
    type: number
    sql: ${TABLE}.advertiser_cost ;;
  }

  measure: ctr {
    description: "CTR"
    type: sum
    sql: CASE WHEN ${TABLE}.impressions = 0 THEN NULL
              ELSE ${TABLE}.clicks / ${TABLE}.impressions
              END;;
  }
}
