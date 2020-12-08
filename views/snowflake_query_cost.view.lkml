view: snowflake_query_cost {
  sql_table_name: "SNOWFLAKE_USAGE"."SNOWFLAKE_QUERY_COST"
    ;;

  measure: bytes_deleted {
    type: sum
    sql: ${TABLE}."BYTES_DELETED" ;;
  }

  measure: bytes_read_from_result {
    type: sum
    sql: ${TABLE}."BYTES_READ_FROM_RESULT" ;;
  }

  measure: bytes_scanned {
    type: sum
    sql: ${TABLE}."BYTES_SCANNED" ;;
  }

  measure: bytes_sent_over_the_network {
    type: sum
    sql: ${TABLE}."BYTES_SENT_OVER_THE_NETWORK" ;;
  }

  measure: bytes_spilled_to_local_storage {
    type: sum
    sql: ${TABLE}."BYTES_SPILLED_TO_LOCAL_STORAGE" ;;
  }

  measure: bytes_spilled_to_remote_storage {
    type: sum
    sql: ${TABLE}."BYTES_SPILLED_TO_REMOTE_STORAGE" ;;
  }

  measure: bytes_written {
    type: sum
    sql: ${TABLE}."BYTES_WRITTEN" ;;
  }

  measure: bytes_written_to_result {
    type: sum
    sql: ${TABLE}."BYTES_WRITTEN_TO_RESULT" ;;
  }

  dimension: cluster_number {
    type: number
    sql: ${TABLE}."CLUSTER_NUMBER" ;;
  }

  measure: compilation_time {
    type: sum
    sql: ${TABLE}."COMPILATION_TIME" ;;
  }

  measure: credits_used_cloud_services {
    type: sum
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  measure: dollars_spent {
    type: sum
    sql: ${TABLE}."DOLLARS_SPENT" ;;
    value_format: "$#,##0.000"
  }

  dimension_group: end {
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
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}."ERROR_CODE" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}."EXECUTION_STATUS" ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}."EXECUTION_TIME" ;;
  }

  measure: external_function_total_invocations {
    type: sum
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_INVOCATIONS" ;;
  }

  measure: external_function_total_received_bytes {
    type: sum
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_RECEIVED_BYTES" ;;
  }

  measure: external_function_total_received_rows {
    type: sum
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_RECEIVED_ROWS" ;;
  }

  measure: external_function_total_sent_bytes {
    type: sum
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_SENT_BYTES" ;;
  }

  measure: external_function_total_sent_rows {
    type: sum
    sql: ${TABLE}."EXTERNAL_FUNCTION_TOTAL_SENT_ROWS" ;;
  }

  measure: inbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_BYTES" ;;
  }

  measure: inbound_data_transfer_cloud {
    type: sum
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: inbound_data_transfer_region {
    type: string
    sql: ${TABLE}."INBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: list_external_files_time {
    type: number
    sql: ${TABLE}."LIST_EXTERNAL_FILES_TIME" ;;
  }

  dimension: outbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_BYTES" ;;
  }

  dimension: outbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: outbound_data_transfer_region {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: partitions_scanned {
    type: number
    sql: ${TABLE}."PARTITIONS_SCANNED" ;;
  }

  dimension: partitions_total {
    type: number
    sql: ${TABLE}."PARTITIONS_TOTAL" ;;
  }

  dimension: percentage_scanned_from_cache {
    type: number
    sql: ${TABLE}."PERCENTAGE_SCANNED_FROM_CACHE" ;;
  }

  dimension: query_credits_used {
    type: number
    sql: ${TABLE}."QUERY_CREDITS_USED" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension: query_load_percent {
    type: number
    sql: ${TABLE}."QUERY_LOAD_PERCENT" ;;
  }

  dimension: query_tag {
    type: string
    sql: ${TABLE}."QUERY_TAG" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}."QUERY_TYPE" ;;
  }

  dimension: queued_overload_time {
    type: number
    sql: ${TABLE}."QUEUED_OVERLOAD_TIME" ;;
  }

  dimension: queued_provisioning_time {
    type: number
    sql: ${TABLE}."QUEUED_PROVISIONING_TIME" ;;
  }

  dimension: queued_repair_time {
    type: number
    sql: ${TABLE}."QUEUED_REPAIR_TIME" ;;
  }

  dimension: release_version {
    type: string
    sql: ${TABLE}."RELEASE_VERSION" ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }

  dimension: rows_deleted {
    type: number
    sql: ${TABLE}."ROWS_DELETED" ;;
  }

  dimension: rows_inserted {
    type: number
    sql: ${TABLE}."ROWS_INSERTED" ;;
  }

  dimension: rows_produced {
    type: number
    sql: ${TABLE}."ROWS_PRODUCED" ;;
  }

  dimension: rows_unloaded {
    type: number
    sql: ${TABLE}."ROWS_UNLOADED" ;;
  }

  dimension: rows_updated {
    type: number
    sql: ${TABLE}."ROWS_UPDATED" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_TIME" ;;
  }

  measure: total_elapsed_time {
    type: sum
    sql: ${TABLE}."TOTAL_ELAPSED_TIME"  / 86400000.0;;
  value_format: "h:mm:ss"
  }

  dimension: transaction_blocked_time {
    type: number
    sql: ${TABLE}."TRANSACTION_BLOCKED_TIME" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WAREHOUSE_SIZE" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."WAREHOUSE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, schema_name, role_name, warehouse_name, user_name]
  }
}
