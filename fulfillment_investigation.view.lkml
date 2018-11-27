view: fulfillment_investigation {
  sql_table_name: looker.fulfillment_data ;;

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;

    html:
    {% if value == 'Client B' %}
    <p style="background-color: red; ">{{ rendered_value }}</p>
    {% elsif value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: cor_imp {
    type: string
    sql: ${TABLE}.cor_imp ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: mkts_under {
    type: string
    sql: ${TABLE}.mkts_under ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: venues_under {
    type: string
    sql: ${TABLE}.venues_under ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
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

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: fulfillment_month {
    type: string
    sql: ${TABLE}.fulfillment_month ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: market1 {
    type: string
    sql: ${TABLE}.market1 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }
  dimension: market2 {
    type: string
    sql: ${TABLE}.market2 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }
  dimension: network1 {
    type: string
    sql: ${TABLE}.network1 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: network2 {
    type: string
    sql: ${TABLE}.network2 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: network3 {
    type: string
    sql: ${TABLE}.network3 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: fulfillment_contract {
    type: string
    sql: ${TABLE}.fulfillment_contract ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: network4 {
    type: string
    sql: ${TABLE}.network4 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: network5 {
    type: string
    sql: ${TABLE}.network5 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }

  dimension: network6 {
    type: string
    sql: ${TABLE}.network6 ;;

    html:
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>;;
  }


#  measure: count {
#    type: count
#    drill_fields: [client_name]
#  }
}
