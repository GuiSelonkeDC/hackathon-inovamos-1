view: stores {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.stores`
    ;;
  drill_fields: [store_id]

  dimension: store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: hub_id {
    type: number
    sql: ${TABLE}.hub_id ;;
  }

  dimension: store_latitude {
    type: number
    sql: ${TABLE}.store_latitude ;;
  }

  dimension: store_longitude {
    type: number
    sql: ${TABLE}.store_longitude ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_plan_price {
    type: number
    sql: ${TABLE}.store_plan_price ;;
  }

  dimension: store_segment {
    type: string
    sql: ${TABLE}.store_segment ;;
  }

  measure: count {
    type: count
    drill_fields: [store_id, store_name]
  }
}
