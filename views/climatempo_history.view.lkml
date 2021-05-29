view: climatempo_history {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.climatempo_history`
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

  dimension: precipitacao {
    type: number
    sql: ${TABLE}.precipitacao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
