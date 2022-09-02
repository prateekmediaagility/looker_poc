# The name of this view in Looker is "Report1 2"
view: report1_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `business-transformers.varun_beverages.report1_2`
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

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: container {
    type: string
    sql: ${TABLE}.CONTAINER ;;
  }

  dimension: cust_cd {
    type: string
    sql: ${TABLE}.CUST_CD ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.CUST_NAME ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: disc_type {
    type: string
    sql: ${TABLE}.DISC_TYPE ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: dist_cd {
    type: string
    sql: ${TABLE}.DIST_CD ;;
  }

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DIST_NAME ;;
  }

  dimension: flavor {
    type: string
    sql: ${TABLE}.FLAVOR ;;
  }

  dimension: hos {
    type: string
    sql: ${TABLE}.HOS ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: inv_dt {
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
    sql: ${TABLE}.INV_DT ;;
  }

  dimension: inv_no {
    type: string
    sql: ${TABLE}.INV_NO ;;
  }

  dimension: inv_status {
    type: string
    sql: ${TABLE}.INV_Status ;;
  }

  dimension: keyaccgrp2_cd {
    type: string
    sql: ${TABLE}.KEYACCGRP2_CD ;;
  }

  dimension: keyaccgrp3_cd {
    type: string
    sql: ${TABLE}.KEYACCGRP3_CD ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: mrp_unit {
    type: number
    sql: ${TABLE}.MRP_UNIT ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: pack {
    type: string
    sql: ${TABLE}.PACK ;;
  }

  dimension: prd_cd {
    type: string
    sql: ${TABLE}.PRD_CD ;;
  }

  dimension: prd_desc1 {
    type: string
    sql: ${TABLE}.PRD_DESC1 ;;
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

  dimension_group: so_dt {
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
    sql: ${TABLE}.SO_DT ;;
  }

  dimension: sub_channel {
    type: string
    sql: ${TABLE}.Sub_Channel ;;
  }

  dimension: tdm {
    type: string
    sql: ${TABLE}.TDM ;;
  }

  dimension: territory {
    type: string
    sql: ${TABLE}.TERRITORY ;;
  }

  dimension: ttl_sml {
    type: number
    sql: ${TABLE}.TTL_SML ;;
  }

  dimension: uom {
    type: number
    sql: ${TABLE}.UOM ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: [slsman_name, dist_name, cust_name]
  }
}
