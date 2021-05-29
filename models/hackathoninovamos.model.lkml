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


}
