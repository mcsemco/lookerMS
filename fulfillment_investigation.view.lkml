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
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: cor_imp {
    type: string
    sql: ${TABLE}.cor_imp ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: mkts_under {
    type: string
    sql: ${TABLE}.mkts_under ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: venues_under {
    type: string
    sql: ${TABLE}.venues_under ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
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
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: fulfillment_month {
    type: string
    sql: ${TABLE}.fulfillment_month ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: market1 {
    type: string
    sql: ${TABLE}.market1 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: market2 {
    type: string
    sql: ${TABLE}.market2 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: network1 {
    type: string
    sql: ${TABLE}.network1 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network2 {
    type: string
    sql: ${TABLE}.network2 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network3 {
    type: string
    sql: ${TABLE}.network3 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: fulfillment_contract {
    type: string
    sql: ${TABLE}.fulfillment_contract ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network4 {
    type: string
    sql: ${TABLE}.network4 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network5 {
    type: string
    sql: ${TABLE}.network5 ;;

    html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network6 {
    type: string
    sql: ${TABLE}.network6 ;;

     html:
    {% if ${client} == 'Client B' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }


#  measure: count {
#    type: count
#    drill_fields: [client_name]
#  }
}
