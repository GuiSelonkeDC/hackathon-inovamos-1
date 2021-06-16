view: channels {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.channels`
    ;;
  drill_fields: [channel_id]

  dimension: channel_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension: channel_type {
    type: string
    sql: ${TABLE}.channel_type ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_id, channel_name]
  }
}
