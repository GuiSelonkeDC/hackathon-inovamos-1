view: clima_tempo_previsao {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.clima_tempo_previsao`
    ;;

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension_group: data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: probabilidade {
    type: number
    sql: ${TABLE}.probabilidade ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
