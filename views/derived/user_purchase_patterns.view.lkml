view: user_purchase_patterns {
  derived_table: {
    datagroup_trigger: partner_casestudies_default_datagroup
    sql: SELECT
          user_id,
          count(distinct order_id) AS total_lifetime_orders,
          sum(CASE WHEN status NOT IN ('Returned','Cancelled') THEN sale_price END) AS total_lifetime_revenue,
          min(created_at) AS first_order,
          max(created_at) AS latest_order
          FROM public.order_items
          GROUP BY user_id;;
  }

  dimension: user_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: total_lifetime_orders {
    type: number
    sql: ${TABLE}.total_lifetime_orders ;;
  }

  dimension: total_lifetime_revenue {
    type: number
    value_format_name: usd
    sql: ${TABLE}.total_lifetime_revenue ;;
  }

  dimension_group: first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month,
    ]
    sql: ${TABLE}.first_order ;;
  }

  dimension_group: latest_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month,
    ]
    sql: ${TABLE}.latest_order ;;
  }

  dimension: customer_lifetime_orders {
    type: tier
    tiers: [1, 2, 3, 6, 10]
    style: integer
    sql: ${total_lifetime_orders} ;;
    drill_fields: [total_lifetime_orders]
  }

  dimension: customer_lifetime_revenue {
    type: tier
    tiers: [0, 5, 20, 50, 100, 500, 1000]
    style: integer
    value_format_name: usd
    sql: ${total_lifetime_revenue}  ;;
    drill_fields: [total_lifetime_revenue]
  }

  measure: average_lifetime_orders {
    type: average
    sql: ${total_lifetime_orders} ;;
    drill_fields: [user_detail*, average_lifetime_orders, average_lifetime_revenue]
  }

  measure: average_lifetime_revenue {
    type: average
    value_format_name: usd
    sql: ${total_lifetime_revenue} ;;
    drill_fields: [user_detail*, average_lifetime_orders, average_lifetime_revenue]
  }

  dimension_group: since_latest_order {
    type: duration
    sql_start: ${latest_order_raw} ;;
    sql_end: getdate() ;;
    intervals: [day, week, month]
  }

  dimension: is_active {
    description: "Has the customer ordered in the last 90 days?"
    type: yesno
    sql: ${days_since_latest_order} <= 90 ;;
  }

  measure: average_days_since_latest_order {
    type: average
    sql: ${days_since_latest_order} ;;
    drill_fields: [user_detail*, average_days_since_latest_order, average_lifetime_orders, average_lifetime_revenue]
  }

  dimension: is_repeat_customer {
    type: yesno
    sql: ${total_lifetime_orders} > 1 ;;
  }

  dimension: has_ordered {
    type: yesno
    sql: ${total_lifetime_orders} > 0 ;;
  }

  dimension_group: signup_to_first_order {
    type: duration
    sql_start: ${users.created_date} ;;
    sql_end: ${first_order_raw} ;;
    intervals: [day]
  }

  dimension: signup_to_first_order_group {
    type: tier
    tiers: [0,7,14,28]
    style: integer
    sql: ${days_signup_to_first_order} ;;
  }

  measure: average_days_signup_to_first_order {
    type: average
    sql: ${days_signup_to_first_order} ;;
    drill_fields: [user_detail*, average_days_signup_to_first_order]
  }

  set: user_detail {
    fields: [
      users.age_group,
      users.gender,
      users.traffic_source
    ]
  }
}
