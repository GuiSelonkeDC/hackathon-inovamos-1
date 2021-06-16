view: dates {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.dates`
    ;;

  dimension_group: date {
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
    sql: CAST(${TABLE}.date_date AS TIMESTAMP) ;;
  }

  dimension: date_day {
    type: number
    sql: ${TABLE}.date_day ;;
  }

  dimension: date_dow {
    type: number
    sql: ${TABLE}.date_dow ;;
  }

  dimension: date_doy {
    type: number
    sql: ${TABLE}.date_doy ;;
  }

  dimension: date_quater {
    type: number
    sql: ${TABLE}.date_quater ;;
  }

  dimension: date_year_month {
    type: string
    sql: ${TABLE}.date_year_month ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
