# The name of this view in Looker is "Department"
view: department {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `business-transformers.Prateek_Test.department`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}.Department_Name ;;
  }

  dimension: employee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Employee_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [department_name, employee.employee_id, employee.employee_name]
  }
}
