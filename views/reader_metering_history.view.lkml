view: reader_metering_history {
  sql_table_name: "SNOWFLAKE_USAGE"."READER_METERING_HISTORY"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  measure: credits_used {
    type: sum
    sql: ${TABLE}."CREDITS_USED" ;;
    value_format: "#,##0.00"
  }

  measure: credits_used_cloud_services {
    type: sum
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
    value_format: "#,##0.00"
  }

  measure: credits_used_compute {
    type: sum
    sql: ${TABLE}."CREDITS_USED_COMPUTE" ;;
    value_format: "#,##0.00"
  }

  measure: dollars_spent {
    type: sum
    sql: ${TABLE}."DOLLARS_SPENT" ;;
    value_format: "$#,##0.00"
    description: "Calculated by multiplying credits used for compute by $3.60"
  }

  dimension_group: usage {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name, account_name]
  }
}
