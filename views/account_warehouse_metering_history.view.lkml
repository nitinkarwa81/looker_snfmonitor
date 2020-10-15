view: account_warehouse_metering_history {
  sql_table_name: "SNOWFLAKE_USAGE"."ACCOUNT_WAREHOUSE_METERING_HISTORY"
    ;;

  measure: credits_used {
    type: sum
    sql: ${TABLE}."CREDITS_USED" ;;
    value_format: "#,##0.00"
    description: "Total number of credits used for the account in the hour. This is a sum of CREDITS_USED_COMPUTE and CREDITS_USED_CLOUD_SERVICES. This value does not take into account the adjustement for cloud services, and may therefore be greater than your actual credit consumption."
  }

  measure: credits_used_cloud_services {
    type: sum
    sql: ${TABLE}."CREDITS_USED_CLOUD_SERVICES" ;;
    value_format: "#,##0.00"
    description: "Number of credits used for cloud services in the hour."
  }

  measure: credits_used_compute {
    type: sum
    sql: ${TABLE}."CREDITS_USED_COMPUTE" ;;
    value_format: "#,##0.00"
    description: "Number of credits used for virtual warehouses in the hour."
  }

  measure: dollars_spent {
    type: sum
    sql: ${TABLE}."DOLLARS_SPENT" ;;
    value_format: "$#,##0.00"
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
    hidden: yes
  }

  dimension_group: date {
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
    description: "The start date and beginning of the hour (in the UTC time zone) in which the usage took place."
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
    drill_fields: [warehouse_name]
  }
}
