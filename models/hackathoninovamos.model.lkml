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

}
