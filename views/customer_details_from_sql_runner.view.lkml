view: customer_details_from_sql_runner {
  derived_table: {

    sql: SELECT
          report_1_final.CUSTOMER_ID  AS cust_id,
          report_1_final.CUST_NAME  AS cust_name,
          report_1_final.CUST_CD  AS cust_cd,
          COUNT(*) AS total_count,
          COALESCE(SUM(report_1_final.Amount ), 0) AS total_amount
      FROM `business-transformers.varun_beverages.report_1_final`
           AS report_1_final
      GROUP BY
          1,
          2,
          3
      ORDER BY
          4 DESC

       ;;
      sql_trigger_value: SELECT  extract (date FROM  current_timestamp() );;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cust_id {
    type: string
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }

  dimension: cust_cd {
    type: string
    sql: ${TABLE}.cust_cd ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.total_count ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  set: detail {
    fields: [cust_id, cust_name, cust_cd, total_count, total_amount]
  }
}
