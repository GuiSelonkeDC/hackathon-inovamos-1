view: orders {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.orders`
    ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: delivery_order_id {
    type: number
    sql: ${TABLE}.delivery_order_id ;;
  }

  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }

  dimension: order_created_day {
    type: number
    sql: ${TABLE}.order_created_day ;;
  }

  dimension: order_created_hour {
    type: number
    sql: ${TABLE}.order_created_hour ;;
  }

  dimension: order_created_minute {
    type: number
    sql: ${TABLE}.order_created_minute ;;
  }

  dimension: order_created_month {
    type: number
    sql: ${TABLE}.order_created_month ;;
  }

  dimension: order_created_year {
    type: number
    sql: ${TABLE}.order_created_year ;;
  }

  dimension: order_delivery_cost {
    type: number
    sql: ${TABLE}.order_delivery_cost ;;
  }

  dimension: order_delivery_fee {
    type: number
    sql: ${TABLE}.order_delivery_fee ;;
  }

  dimension: order_metric_collected_time {
    type: number
    sql: ${TABLE}.order_metric_collected_time ;;
  }

  dimension: order_metric_cycle_time {
    type: number
    sql: ${TABLE}.order_metric_cycle_time ;;
  }

  dimension: order_metric_expediton_speed_time {
    type: number
    sql: ${TABLE}.order_metric_expediton_speed_time ;;
  }

  dimension: order_metric_paused_time {
    type: number
    sql: ${TABLE}.order_metric_paused_time ;;
  }

  dimension: order_metric_production_time {
    type: number
    sql: ${TABLE}.order_metric_production_time ;;
  }

  dimension: order_metric_transit_time {
    type: number
    sql: ${TABLE}.order_metric_transit_time ;;
  }

  dimension: order_metric_walking_time {
    type: number
    sql: ${TABLE}.order_metric_walking_time ;;
  }

  dimension_group: order_moment_accepted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_accepted ;;
  }

  dimension_group: order_moment_collected {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_collected ;;
  }

  dimension_group: order_moment_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_created;;
  }


  dimension_group: order_moment_delivered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_delivered ;;
  }

  dimension_group: order_moment_delivering {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_delivering ;;
  }

  dimension_group: order_moment_finished {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_finished ;;
  }

  dimension_group: order_moment_in_expedition {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_in_expedition ;;
  }

  dimension_group: order_moment_ready {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_moment_ready ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: payment_order_id {
    type: number
    sql: ${TABLE}.payment_order_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id]
  }
}
