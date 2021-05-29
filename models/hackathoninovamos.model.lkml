connection: "hackathoninovamos"
include: "/views/**/*.view"
datagroup: hackathoninovamos_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hackathoninovamos_default_datagroup

explore: orders {
  label: "Inovamos"
  join: stores {
    type: left_outer
    sql_on: ${stores.store_id} = ${orders.store_id} ;;
    relationship: one_to_many
  }
  join: hubs {
    type: full_outer
    sql_on: ${hubs.hub_id} = ${stores.hub_id} ;;
    relationship: many_to_many
  }
  join: payments {
    type: full_outer
    sql_on: ${payments.payment_order_id} = ${orders.payment_order_id} ;;
    relationship: many_to_many
  }
  join: channels {
    type: full_outer
    sql_on: ${channels.channel_id} = ${orders.channel_id} ;;
    relationship: many_to_many
  }
  join: deliveries {
    type: full_outer
    sql_on: ${deliveries.delivery_order_id} = ${orders.delivery_order_id} ;;
    relationship: many_to_many
  }
  join: drivers {
    type: full_outer
    sql_on: ${drivers.driver_id} = ${deliveries.driver_id} ;;
    relationship: many_to_many
  }
  join: climatempo_historico_id {
    type: full_outer
    sql_on: ${climatempo_historico_id.cidade} = ${hubs.hub_city} ;;
    relationship: many_to_many
  }
  join: climatempo_previsao_id {
    type: full_outer
    sql_on: ${climatempo_previsao_id.cidade} = ${hubs.hub_city} ;;
    relationship: many_to_many
    }
}
