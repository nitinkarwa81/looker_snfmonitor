view: organization_storage_history {
  sql_table_name: "SNOWFLAKE_USAGE"."ORGANIZATION_STORAGE_HISTORY"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  measure: average_terabytes {
    type: sum
    sql: ${TABLE}."AVERAGE_BYTES"/(1099511627776) ;;
    value_format: "#,##0.00"
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}."ORGANIZATION_NAME" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}."SERVICE_TYPE" ;;
  }

  dimension_group: usage {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name, organization_name]
  }
}
