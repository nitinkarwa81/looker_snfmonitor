connection: "edw_monitoring"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: snowflake_monthly_usage_cost {
  group_label: "Snowflake Spend"
  label: "Snowflake Monthly Usage"
}

explore: snowflake_job_history {
  group_label: "Snowflake Spend"
  label: "Snowflake Job History"
}

explore: account_warehouse_metering_history {
  group_label: "Snowflake Spend"
  label: "Warehouse Metering Spend"
}

explore: snowflake_query_cost {
  group_label:  "Snowflake Spend"
  label: "Snowflake Query History"
}

explore: organization_data_transfer_history {
  group_label:  "Snowflake Spend"
  label: "Organization Data Transfer History"
}

explore: organization_metering_history {
  group_label:  "Snowflake Spend"
  label: "Organization Metering History"
}

explore: organization_storage_history {
  group_label:  "Snowflake Spend"
  label: "Organization Storage History"
}

explore: reader_metering_history {
  group_label:  "Snowflake Spend"
  label: "Reader Account Metering History"
}
