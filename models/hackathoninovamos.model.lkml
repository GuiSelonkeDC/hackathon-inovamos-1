connection: "hackathon_inovamos"

datagroup: hackathoninovamos_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hackathoninovamos_default_datagroup
