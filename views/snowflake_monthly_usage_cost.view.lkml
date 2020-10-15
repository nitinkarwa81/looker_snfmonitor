view: snowflake_monthly_usage_cost {
  sql_table_name: "SNOWFLAKE_USAGE"."SNOWFLAKE_MONTHLY_USAGE_COST"
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
    drill_fields: [category]
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  measure: dollars_spent {
    type: sum
    sql: ${TABLE}."DOLLARS_SPENT" ;;
    value_format: "$#,##0.00"
  }


  dimension_group: month {
    type: time
    timeframes: [
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."MONTH" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
