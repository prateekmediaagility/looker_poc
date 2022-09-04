# If necessary, uncomment the line below to include explore_source.

# include: "beverages.model.lkml"

view: add_a_unique_name_1662306268 {
  derived_table: {
    datagroup_trigger: daily_datagroup
    explore_source: report_1_final {
      column: customer_id {}
      column: cust_name {}
      column: cust_cd {}
      column: city {}
      column: total_amount {}
      column: year {}
    }
  }
  dimension: customer_id {
    primary_key: yes
    description: ""
  }
  dimension: cust_name {
    description: ""
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
  dimension: year {
    description: ""
    type: number
  }
}
