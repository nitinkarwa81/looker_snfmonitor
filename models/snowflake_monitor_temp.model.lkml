connection: "edw_monitoring"

datagroup: snowflake_monitor_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_monitor_default_datagroup
