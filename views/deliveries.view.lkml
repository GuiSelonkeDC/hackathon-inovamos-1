view: deliveries {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.deliveries`
    ;;
  drill_fields: [delivery_id]

  dimension: delivery_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.delivery_id ;;
  }

  dimension: delivery_distance_meters {
    type: number
    sql: ${TABLE}.delivery_distance_meters ;;
  }

  dimension: delivery_order_id {
    type: number
    sql: ${TABLE}.delivery_order_id ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}.delivery_status ;;
  }

  dimension: driver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.driver_id ;;
  }

  measure: count {
    type: count
    drill_fields: [delivery_id, drivers.driver_id]
  }
}
