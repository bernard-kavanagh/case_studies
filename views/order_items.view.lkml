view: order_items {
  sql_table_name: "PUBLIC"."ORDER_ITEMS"
    ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension_group: created {
    label: "Order Created"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week
    ]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension_group: delivered {
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
    sql: ${TABLE}."DELIVERED_AT" ;;
  }

  dimension: inventory_item_id {
    type: number
    hidden: yes
    sql: ${TABLE}."INVENTORY_ITEM_ID" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension_group: returned {
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
    sql: ${TABLE}."RETURNED_AT" ;;
  }

  dimension: sale_price {
    hidden: yes
    type: number
    value_format_name: usd
    sql: ${TABLE}."SALE_PRICE" ;;
  }

  dimension_group: shipped {
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
    sql: ${TABLE}."SHIPPED_AT" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: user_id {
    type: number
    hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  measure: total_sale_price {
    group_label: "Order Value Info"
    type: sum
    value_format_name: usd
    sql: ${sale_price} ;;
    drill_fields: [customer_info*, total_sale_price]
  }

  measure: cumulative_total_price {
    group_label: "Order Value Info"
    type: running_total
    value_format_name: usd
    sql: ${sale_price} ;;
  }

  measure: total_gross_revenue {
    group_label: "Revenue Info"
    type: sum
    value_format_name: usd
    sql: ${sale_price} ;;
    filters: [status: "-Cancelled, -Returned"]
    drill_fields: [customer_info*]
  }

  dimension: margin {
    group_label: "Margin Info"
    type: number
    value_format_name: usd
    sql: ${sale_price} - ${inventory_items.cost} ;;
    drill_fields: [customer_info*, margin]
  }

  measure: total_gross_margin {
    group_label: "Margin Info"
    type: sum
    value_format_name: usd
    sql: ${margin} ;;
    filters: [status: "-Cancelled, -Returned"]
    drill_fields: [product_info*, total_gross_margin]
  }

  measure: average_gross_margin {
    group_label: "Margin Info"
    type: average
    value_format_name: usd
    sql: ${margin} ;;
    filters: [status: "-Cancelled, -Returned"]
    drill_fields: [customer_info*, average_gross_margin]
  }

  measure: gross_margin_percentage {
    group_label: "Margin Info"
    type: number
    value_format_name: percent_2
    sql: ${total_gross_margin} / NULLIF(${total_gross_revenue},0) ;;
    drill_fields: [customer_info*, gross_margin_percentage]
  }

  measure: number_items_returned {
    group_label: "Return Info"
    type: count
    filters: [status: "Returned"]
    drill_fields: [customer_info*, number_items_returned]
  }

  measure: number_items_sold {
    group_label: "Order Info"
    type: count
    drill_fields: [customer_info*, number_items_sold]
  }

  measure: item_return_rate {
    group_label: "Return Info"
    type: number
    value_format_name: percent_2
    sql: 1.0* ${number_items_returned} / nullif(${number_items_sold},0) ;;
    drill_fields: [customer_info*, item_return_rate]
  }

  measure: number_customers_returning {
    group_label: "Return Info"
    type: count_distinct
    sql: ${user_id} ;;
    filters: [status: "Returned"]
    drill_fields: [customer_info*, number_customers_returning]
  }

  measure: percent_users_with_returns {
    group_label: "Return Info"
    type: number
    value_format_name: percent_1
    sql: ${number_customers_returning} / nullif(${users.total_users},0) ;;
    drill_fields: [customer_info*, percent_users_with_returns]
  }

  measure: average_spend_per_customer {
    group_label: "Order Value Info"
    type: number
    value_format_name: usd
    sql: ${total_sale_price} / ${users.total_users} ;;
    drill_fields: [customer_info*, average_spend_per_customer]
  }

  dimension_group: signup_to_order {
    type: duration
    sql_start: ${users.created_raw} ;;
    sql_end: ${created_raw} ;;
    intervals: [day, month]
  }

  dimension_group: order_to_delivery {
    group_label: "Delivery Info"
    type: duration
    sql_start: ${created_raw} ;;
    sql_end: ${delivered_raw} ;;
    intervals: [day]
  }

  measure: average_days_order_to_delivery {
    group_label: "Delivery Info"
    type: average
    sql: ${days_order_to_delivery} ;;
    drill_fields: [customer_info*, average_days_order_to_delivery]
  }

  dimension: new_customer_order {
    description: "New Customer Flag if order created within 90 days of signing up"
    type: yesno
    sql: ${days_signup_to_order} <= 90 ;;
  }

  measure: number_of_orders {
    group_label: "Order Info"
    type: count_distinct
    sql: ${order_id};;
    drill_fields: [customer_info*, number_of_orders]
  }

  measure: percent_of_total_revenue {
    group_label: "Revenue Info"
    type: percent_of_total
    sql: ${total_gross_revenue} ;;
    drill_fields: [customer_info*]
  }

  measure: first_order {
    hidden: yes
    type: date
    sql: min(${created_raw}) ;;
  }

  measure: latest_order {
    hidden: yes
    type: date
    sql: max(${created_raw}) ;;
  }

  measure: average_sale_price {
    group_label: "Order Value Info"
    type: number
    value_format_name: usd
    sql: ${total_sale_price} / nullif(${number_of_orders},0) ;;
    drill_fields: [customer_info*, average_sale_price]
  }

  measure: average_order_size {
    group_label: "Order Info"
    type: number
    sql: ${number_items_sold} / ${number_of_orders} ;;
    drill_fields: [customer_info*, average_order_size]
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.first_name,
      users.id,
      users.last_name,
      inventory_items.id,
      inventory_items.product_name
    ]
  }

  set: customer_info {
    fields: [
      users.age_group,
      users.gender,
      number_of_orders,
      average_spend_per_customer,
      total_gross_revenue
    ]
  }

  set: product_info {
    fields: [
      products.category,
      products.brand,
      total_gross_margin,
      total_gross_revenue,
      gross_margin_percentage,
      average_sale_price,
      item_return_rate
    ]
  }

  set: for_users {
    fields: [created_raw, created_date, created_week, created_month, created_year, delivered_raw, days_signup_to_order, months_signup_to_order,
      sale_price, inventory_item_id, status, user_id, new_customer_order,
      total_sale_price, total_gross_revenue, average_gross_margin, gross_margin_percentage,
      number_items_sold, item_return_rate, percent_users_with_returns, average_spend_per_customer, average_days_order_to_delivery,
      number_of_orders, percent_of_total_revenue, average_sale_price, average_order_size]
  }
}
