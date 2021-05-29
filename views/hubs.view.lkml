view: hubs {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.hubs`
    ;;
  drill_fields: [hub_id]

  dimension: hub_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.hub_id ;;
  }

  dimension: hub_city {
    type: string
    sql: ${TABLE}.hub_city ;;
  }

  dimension: hub_latitude {
    type: number
    sql: ${TABLE}.hub_latitude ;;
  }

  dimension: hub_longitude {
    type: number
    sql: ${TABLE}.hub_longitude ;;
  }

  dimension: hub_name {
    type: string
    sql: ${TABLE}.hub_name ;;
  }

  dimension: hub_state {
    type: string
    sql: ${TABLE}.hub_state ;;
  }

  measure: count {
    type: count
    drill_fields: [hub_id, hub_name, stores.count]
  }
}
