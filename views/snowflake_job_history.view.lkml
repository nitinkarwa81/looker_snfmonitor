view: snowflake_job_history {
  sql_table_name: "SNOWFLAKE_USAGE"."SNOWFLAKE_JOB_HISTORY"
    ;;

  measure: avg_query_load_percent {
    type: sum
    sql: ${TABLE}."AVG_QUERY_LOAD_PERCENT" ;;
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

  dimension: excutable_run_id {
    type: string
    sql: ${TABLE}."EXCUTABLE_RUN_ID" ;;
  }

  dimension: executable_name {
    type: string
    sql: ${TABLE}."EXECUTABLE_NAME" ;;
  }

  measure: node_seconds {
    type: sum
    sql: ${TABLE}."NODE_SECONDS" ;;
    value_format: "#,##0"
  }

  dimension: platform_source {
    type: string
    sql: ${TABLE}."PLATFORM_SOURCE" ;;
    drill_fields: [source_name]
  }

  dimension: query_count {
    type: number
    sql: ${TABLE}."QUERY_COUNT" ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}."RUN_ID" ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}."SOURCE_NAME" ;;
    drill_fields: [executable_name,run_id]
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

  measure: total_dollars_spent {
    type: sum
    sql: ${TABLE}."TOTAL_DOLLARS_SPENT" ;;
    value_format: "$#,##0.000"
  }

  measure: total_execution_time {
    type: sum
    sql: ${TABLE}."TOTAL_EXECUTION_TIME" ;;
    value_format: "#,##0"
  }

  measure: count {
    type: count
    drill_fields: [executable_name, source_name]
  }
}
