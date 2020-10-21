view: user_cohort_size {
  derived_table: {
    datagroup_trigger: partner_casestudies_default_datagroup
    sql: SELECT TO_CHAR(DATE_TRUNC('month', CONVERT_TIMEZONE('UTC', 'America/Los_Angeles', CAST("CREATED_AT"  AS TIMESTAMP_NTZ))), 'YYYY-MM') AS signup_month
        ,COUNT(*) AS signups
        FROM "PUBLIC"."USERS"
        GROUP BY 1
          ;;
  }

  dimension: signup_month {
    primary_key: yes
    hidden: yes
  }

  dimension: signups {
    type: number
    hidden: yes
    sql: ${TABLE}.signups ;;
  }

  measure: total_month_signups {
    type: sum
    sql: ${signups} ;;
  }

  measure: revenue_per_month_cohort {
    type: number
    value_format_name: usd
    sql: ${order_items.total_gross_revenue} / nullif(${signups},0) ;;
  }
}
