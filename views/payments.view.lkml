view: payments {
  sql_table_name: `hackathon-inovamos.hackathon_inovamos.payments`
    ;;
  drill_fields: [payment_id]

  dimension: payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: payment_amount {
    type: number
    sql: ${TABLE}.payment_amount ;;
  }

  dimension: payment_fee {
    type: number
    sql: ${TABLE}.payment_fee ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_order_id {
    type: number
    sql: ${TABLE}.payment_order_id ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment_status ;;
  }

  measure: count {
    type: count
    drill_fields: [payment_id]
  }
}
