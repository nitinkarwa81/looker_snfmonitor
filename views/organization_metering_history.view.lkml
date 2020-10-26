view: organization_metering_history {
  sql_table_name: "SNOWFLAKE_USAGE"."ORGANIZATION_METERING_HISTORY"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: credit_rate {
    type: number
    sql: ${TABLE}."CREDIT_RATE" ;;
  }

  measure: credits_adjustment_cloud_services {
    type: sum
    sql: ${TABLE}."CREDITS_ADJUSTMENT_CLOUD_SERVICES" ;;
  }

  measure: credits_billed {
    type: sum
    sql: ${TABLE}."CREDITS_BILLED" ;;
  }

  measure: credits_used {
    type: sum
    sql: ${TABLE}."CREDITS_USED" ;;
  }

  measure: credits_used_cloud_services {
    type: sum
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
  }

  measure: credits_used_compute {
    type: sum
    sql: ${TABLE}."CREDITS_USED_COMPUTE" ;;
  }

  measure: dollars_spent {
    type: sum
    sql: ${TABLE}."DOLLARS_SPENT" ;;
    value_format: "$#,##0.00"
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
    drill_fields: [organization_name, account_name]
  }
}
