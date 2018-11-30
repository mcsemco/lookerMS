view: fulfillment_investigation {
  sql_table_name: looker.fulfillment_data ;;



  dimension: client {
    type: string
    sql: ${TABLE}.client ;;

    html:
    {% if value == 'Client B' %}
    <p style="background-color: red; ">{{ rendered_value }}</p>
    {% elsif value == 'Client D' || value == 'Client J'  %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: other_markets {
    type: string
    sql: ${TABLE}.other_markets ;;

    html:
    {% if client._rendered_value == 'Client B' %}
    <p style="background-color: red; ">{{ rendered_value }}</p>
    {% elsif client._rendered_value == 'Client D' || client._rendered_value == 'Client J'  %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: cor_imp {
    type: string
    sql: ${TABLE}.cor_imp ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: mkts_under {
    type: string
    sql: ${TABLE}.mkts_under ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: venues_under {
    type: string
    sql: ${TABLE}.venues_under ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: cor_start_date {
    type: string
    sql: ${TABLE}.cor_start_date ;;

    html:
    {% if value == '1/4/2014' || value == '2/5/2014' || value == '3/6/2014'  %}
    <p style="background-color: #7FFF00; ">{{ rendered_value }}</p>
    {% elsif value == '4/7/2014' || value == '5/8/2014' || value == '6/9/2014'%}
    <p style="background-color: #8FBC8F; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: red; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: cor_end_date {
    type: string
    sql: ${TABLE}.cor_end_date ;;

    html:
    {% if value == '4/6/2017' || value == '4/8/2017' || value == '4/10/2017' %}
    <p style="background-color: #7FFF00; ">{{ rendered_value }}</p>
    {% elsif value == '4/13/2017' || value == '4/14/2017' || value == '6/9/2017'%}
    <p style="background-color: #8FBC8F; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: red; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: priority1 {
    sql: ${TABLE}.priority ;;
  }

  dimension: priority {
    sql: ${TABLE}.priority ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: fulfillment_month {
    type: string
    sql: ${TABLE}.fulfillment_month ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: market1 {
    type: string
    sql: ${TABLE}.market1 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: market2 {
    type: string
    sql: ${TABLE}.market2 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: network1 {
    type: string
    sql: ${TABLE}.network1 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network2 {
    type: string
    sql: ${TABLE}.network2 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network3 {
    type: string
    sql: ${TABLE}.network3 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: fulfillment_contract {
    type: string
    sql: ${TABLE}.fulfillment_contract ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network4 {
    type: string
    sql: ${TABLE}.network4 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network5 {
    type: string
    sql: ${TABLE}.network5 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: network6 {
    type: string
    sql: ${TABLE}.network6 ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.contract ;;

    html:
    {% if client._rendered_value == 'Client D' %}
    <p style="background-color: yellow; ">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #FAEBD7; ">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: contract_yellow {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client A' OR
              ${TABLE}.client = 'Client B' OR
              ${TABLE}.client = 'Client C' OR
              ${TABLE}.client = 'Client D' THEN ${TABLE}.contract END ;;

      html:
        <p style="background-color: yellow; ">{{ rendered_value }}</p>;;
    }

  dimension: contract_green {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client E' OR
                ${TABLE}.client = 'Client F' OR
                ${TABLE}.client = 'Client G'  THEN ${TABLE}.contract END ;;

      html:
        <p style="background-color: lightgreen; ">{{ rendered_value }}</p>;;
      }

  dimension: contract_red {
      type: string
      sql: CASE WHEN ${TABLE}.client = 'Client H' OR
          ${TABLE}.client = 'Client I' THEN ${TABLE}.contract END ;;

      html:
        <p style="background-color: red; ">{{ rendered_value }}</p>;;
      }

  dimension: client_yellow {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client A' OR
          ${TABLE}.client = 'Client B' OR
          ${TABLE}.client = 'Client C' OR
          ${TABLE}.client = 'Client D' THEN ${TABLE}.client END ;;

      html:
          <p style="background-color: yellow; ">{{ rendered_value }}</p>;;
    }

  dimension: client_green {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client E' OR
          ${TABLE}.client = 'Client F' OR
          ${TABLE}.client = 'Client G'  THEN ${TABLE}.client END ;;

      html:
          <p style="background-color: lightgreen; ">{{ rendered_value }}</p>;;
      }

  dimension: client_red {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client H' OR
          ${TABLE}.client = 'Client I' THEN ${TABLE}.client END ;;

    html:
        <p style="background-color: red; ">{{ rendered_value }}</p>;;
      }

  dimension: description_yellow {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client A' OR
              ${TABLE}.client = 'Client B' OR
              ${TABLE}.client = 'Client C' OR
              ${TABLE}.client = 'Client D' THEN ${TABLE}.description END ;;

    html:
        <p style="background-color: yellow; ">{{ rendered_value }}</p>;;
        }

  dimension: description_green {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client E' OR
                ${TABLE}.client = 'Client F' OR
                ${TABLE}.client = 'Client G'  THEN ${TABLE}.description END ;;

    html:
        <p style="background-color: lightgreen; ">{{ rendered_value }}</p>;;
          }

  dimension: description_red {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client H' OR
              ${TABLE}.client = 'Client I' THEN ${TABLE}.description END ;;

    html:
        <p style="background-color: red; ">{{ rendered_value }}</p>;;
          }

  dimension: cor_imp_yellow {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client A' OR
              ${TABLE}.client = 'Client B' OR
              ${TABLE}.client = 'Client C' OR
              ${TABLE}.client = 'Client D' THEN ${TABLE}.cor_imp END ;;

      html:
        <p style="background-color: yellow; ">{{ rendered_value }}</p>;;
    }

  dimension: cor_imp_green {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client E' OR
                ${TABLE}.client = 'Client F' OR
                ${TABLE}.client = 'Client G'  THEN ${TABLE}.cor_imp END ;;

    html:
        <p style="background-color: lightgreen; ">{{ rendered_value }}</p>;;
      }

  dimension: cor_imp_red {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client H' OR
          ${TABLE}.client = 'Client I' THEN ${TABLE}.cor_imp END ;;

    html:
        <p style="background-color: red; ">{{ rendered_value }}</p>;;
      }

  dimension: mkts_under_yellow {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client A' OR
              ${TABLE}.client = 'Client B' OR
              ${TABLE}.client = 'Client C' OR
              ${TABLE}.client = 'Client D' THEN ${TABLE}.mkts_under END ;;

      html:
        <p style="background-color: yellow; ">{{ rendered_value }}</p>;;
    }

dimension: mkts_under_green {
  type: string
  sql: CASE WHEN ${TABLE}.client = 'Client E' OR
                ${TABLE}.client = 'Client F' OR
                ${TABLE}.client = 'Client G'  THEN ${TABLE}.mkts_under END ;;

    html:
        <p style="background-color: lightgreen; ">{{ rendered_value }}</p>;;
}

  dimension: mkts_under_red {
    type: string
    sql: CASE WHEN ${TABLE}.client = 'Client H' OR
          ${TABLE}.client = 'Client I' THEN ${TABLE}.mkts_under END ;;

    html:
        <p style="background-color: red; ">{{ rendered_value }}</p>;;
  }

  measure: count {
    type: count
    drill_fields: [detail4*]
  }

  measure: count_yellow {
    type: count
    drill_fields: [detail1*]
  }

  measure: count_green {
    type: count
    drill_fields: [detail2*]
  }

  measure: count_red {
    type: count
    drill_fields: [detail3*]
  }
set: detail1 {
  fields: [client_yellow, description_yellow, cor_imp_yellow, mkts_under_yellow ]
  }

  set: detail2 {
    fields: [client_green,  description_green, cor_imp_green, mkts_under_green ]
  }

  set: detail3 {
    fields: [client_red, description_red, cor_imp_red, mkts_under_red]
  }

  set: detail4 {
    fields: [client, contract, description, cor_start_date, cor_end_date, client_red, description_red, cor_imp_red, mkts_under_red]
  }

#  measure: count {
#    type: count
#    drill_fields: [client_name]
#  }
}
