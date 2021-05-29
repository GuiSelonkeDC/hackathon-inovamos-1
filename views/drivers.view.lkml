view: drivers {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.drivers`
    ;;
  drill_fields: [driver_id]

  dimension: driver_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.driver_id ;;
  }

  dimension: driver_modal {
    type: string
    sql: ${TABLE}.driver_modal ;;
  }

  dimension: driver_type {
    type: string
    sql: ${TABLE}.driver_type ;;
  }

  measure: count {
    type: count
    drill_fields: [driver_id, deliveries.count]
  }
}
