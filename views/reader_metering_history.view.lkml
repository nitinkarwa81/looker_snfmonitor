view: reader_metering_history {
  sql_table_name: "SNOWFLAKE_USAGE"."READER_METERING_HISTORY"
    ;;

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }

  dimension: credits_used_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  dimension: credits_used_compute {
    type: number
    sql: ${TABLE}."CREDITS_USED_COMPUTE" ;;
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

  dimension_group: reader_account_deleted {
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
    sql: ${TABLE}."READER_ACCOUNT_DELETED_ON" ;;
  }

  dimension: reader_account_name {
    type: string
    sql: ${TABLE}."READER_ACCOUNT_NAME" ;;
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

  dimension_group: usage {
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
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [reader_account_name, warehouse_name]
  }
}
