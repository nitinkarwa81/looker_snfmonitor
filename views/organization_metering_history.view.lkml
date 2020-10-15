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

  dimension: credits_adjustment_cloud_services {
    type: number
    sql: ${TABLE}."CREDITS_ADJUSTMENT_CLOUD_SERVICES" ;;
  }

  dimension: credits_billed {
    type: number
    sql: ${TABLE}."CREDITS_BILLED" ;;
  }

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

  dimension: dollars_spent {
    type: number
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
