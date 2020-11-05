view: account_automatic_clustering_history {
  sql_table_name: "SNOWFLAKE_USAGE"."ACCOUNT_AUTOMATIC_CLUSTERING_HISTORY"
    ;;

  measure: credits_used {
    type: sum
    sql: ${TABLE}."CREDITS_USED" ;;

  }

  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
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
    drill_fields: [ table_name]
  }

  measure: dollars_spent {
    type: sum
    sql: ${TABLE}."DOLLARS_SPENT" ;;
    value_format: "$#,##0.00"
    drill_fields: [ table_name]
  }

  measure: num_bytes_reclustered {
    type: sum
    sql: ${TABLE}."NUM_BYTES_RECLUSTERED" ;;
  }

  measure: num_rows_reclustered {
    type: sum
    sql: ${TABLE}."NUM_ROWS_RECLUSTERED" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
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
    drill_fields: [ table_name]
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}."TABLE_ID" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, table_name, schema_name]
  }
}
