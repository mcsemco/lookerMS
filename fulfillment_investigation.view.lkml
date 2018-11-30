view: fulfillment_investigation {
  sql_table_name: looker.fulfillment_data ;;

  dimension: color_formatting {
    type: string
    sql:  CASE WHEN LEFT(${TABLE}.mkts_under, 1) = '0' THEN 'Pink'
               WHEN LEFT(${TABLE}.venues_under, 1) != '0' AND ${TABLE}.fulfillment_month > 100 THEN 'Yellow'
            -- WHEN ${TABLE}.client = ' ' THEN 'Red'
               ELSE 'White'
          END ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.contract ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: cor_imp {
    type: number
    sql: ${TABLE}.cor_imp ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: mkts_under {
    type: string
    sql: ${TABLE}.mkts_under ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: venues_under {
    type: string
    sql: ${TABLE}.venues_under ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: cor_start_date {
    type: date
    sql: ${TABLE}.cor_start_date ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: cor_end_date {
    type: date
    sql: ${TABLE}.cor_end_date ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: fulfillment_month {
    type: number
    sql: ${TABLE}.fulfillment_month ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: market1 {
    type: string
    sql: ${TABLE}.market1 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: network1 {
    type: string
    sql: ${TABLE}.network1 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: network2 {
    type: string
    sql: ${TABLE}.network2 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: network3 {
    type: string
    sql: ${TABLE}.network3 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: other_markets {
    type: string
    sql: ${TABLE}.other_markets ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: fulfillment_contract {
    type: number
    sql: ${TABLE}.fulfillment_contract ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: market2 {
    type: string
    sql: ${TABLE}.market2 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: network4 {
    type: string
    sql: ${TABLE}.network4 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: network5 {
    type: string
    sql: ${TABLE}.network5 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: network6 {
    type: string
    sql: ${TABLE}.network6 ;;

    html:
    {% if color_formatting._rendered_value == 'Pink' %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% elsif color_formatting._rendered_value == 'Yellow' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: white; ">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [contract, client, description, cor_imp, mkts_under, venues_under, cor_start_date, cor_end_date, priority, fulfillment_month, market1,network1, network2, network3,
      other_markets, fulfillment_contract,network4,network5,network6 ]
  }
}
