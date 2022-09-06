connection: "gbu_looker_poc"

include: "/views/*.view.lkml"   # include all views in the views/ folder in this project

datagroup: beverages_default_datagroups{
  max_cache_age: "1 hours"
}

persist_with: beverages_default_datagroups

datagroup: daily_datagroup {
 #sql_trigger: SELECT FORMAT_TIMESTAMP('%F',
   #CURRENT_TIMESTAMP(), 'America/Los_Angeles') ;;
  sql_trigger: SELECT max(cust_cd) FROM customer_details_PDTs ;;
  max_cache_age: "24 hours"
}
# include: "/**/*.view.lkml"                 # include all views in this project
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
explore: report_1_final {
  join: customer_details {
    sql_on: ${report_1_final.customer_id}=${customer_details.customer_id} ;;
    relationship: many_to_one
  }
}
explore: customer_details {}
explore: customer_details_from_sql_runner {}
explore: customer_details_PDTs {}
