view: organization_data_transfer_history {
  sql_table_name: "SNOWFLAKE_USAGE"."ORGANIZATION_DATA_TRANSFER_HISTORY"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
    description: "Name of the account where the usage took place."
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}."ORGANIZATION_NAME" ;;

  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
    description: "AWS Region where the usage took place."
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}."SERVICE_TYPE" ;;

  }

  measure: tb_transfered {
    type: sum
    sql: ${TABLE}."TB_TRANSFERED" ;;
    value_format: "#,##0.00"
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
