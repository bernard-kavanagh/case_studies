view: order_patterns {
  derived_table: {
    datagroup_trigger: partner_casestudies_default_datagroup
    sql: WITH a AS (
          SELECT DISTINCT user_id,
          order_id,
          created_at
          FROM public.order_items
          )
          , b AS (
          SELECT
            user_id,
            order_id,
            row_number() over (PARTITION BY user_id ORDER BY created_at) AS order_sequence,
            created_at
          FROM a
          )

          SELECT
            b.*,
            c.created_at AS subsequent_order_created_at,
            c.order_id AS subsequent_order_id
          FROM b
          LEFT JOIN b AS c ON b.user_id = c.user_id AND b.order_sequence = c.order_sequence - 1
          ;;
  }

  dimension: user_id {
    type: number
    hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: order_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_sequence {
    type: number
    sql: ${TABLE}.order_sequence ;;
  }

  dimension_group: created {
    label: "Order Created"
    hidden: yes
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
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: subsequent_order_created {
    label: "Subsequent Order Created"
    hidden: yes
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
    sql: ${TABLE}.subsequent_order_created_at ;;
  }

  dimension: subsequent_order_id {
    type: number
    hidden: yes
    sql: ${TABLE}.subsequent_order_id ;;
  }

  dimension_group: between_orders {
    type: duration
    sql_start: ${created_raw} ;;
    sql_end: ${subsequent_order_created_raw} ;;
    intervals: [day]
  }

  measure: average_days_between_orders {
    type: average
    sql: ${days_between_orders} ;;
    drill_fields: [user_detail*, average_days_between_orders, 60_day_repeat_purchase_rate]
  }

  dimension: is_first_purchase {
    type: yesno
    sql: ${order_sequence} = 1 ;;
  }

  dimension: has_subsequent_order {
    type: yesno
    sql: ${subsequent_order_id} IS NOT NULL ;;
  }

  measure: number_customers {
    type: count_distinct
    hidden: yes
    sql: ${user_id} ;;
  }

  measure: number_customers_repeat_60days {
    type: count_distinct
    hidden: yes
    sql: ${user_id} ;;
    filters: [days_between_orders: "< 60"]
  }

  measure: 60_day_repeat_purchase_rate {
    type: number
    value_format_name: percent_1
    sql: ${number_customers_repeat_60days} / nullif(${number_customers}, 0) ;;
    drill_fields: [user_detail*, average_days_between_orders, 60_day_repeat_purchase_rate]
  }

  set: user_detail {
    fields: [
      users.age_group,
      users.gender,
      users.traffic_source
    ]
  }

}
