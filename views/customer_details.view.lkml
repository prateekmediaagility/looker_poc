# If necessary, uncomment the line below to include explore_source.

# include: "beverages.model.lkml"

view: customer_details {
  derived_table: {
    explore_source: report_1_final {
      column: customer_id {}
      column: cust_name {}
      column: cust_cd {}
      column: city {}
      column: total_amount {}
    }
  }
  dimension: customer_id {
    description: ""
  }

  dimension: cust_name {
    description: ""
    bypass_suggest_restrictions: yes
  }
  dimension: cust_cd {
    description: ""
  }
  dimension: city {
    description: ""
  }
  dimension: total_amount {
    description: ""
    type: number
  }
  #${view_name.field_name} references a dimension or measure from another view. For example:

}
