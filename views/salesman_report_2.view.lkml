# The name of this view in Looker is "Salesman Report 2"
view: salesman_report_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `varun_beverages.salesman_report_2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: slsman_cd {
    type: string
    sql: ${TABLE}.SLSMAN_CD ;;
  }

  dimension: slsman_name {
    type: string
    sql: ${TABLE}.SLSMAN_NAME ;;
  }

  dimension: slsman_oprtype {
    type: string
    sql: ${TABLE}.SLSMAN_OPRTYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [slsman_name]
  }
}
