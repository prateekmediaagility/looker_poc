connection: "gbu_looker_poc"

include: "/views/*.view.lkml"   # include all views in the views/ folder in this project


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
