view: inventory_items {
  sql_table_name: "PUBLIC"."INVENTORY_ITEMS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: cost {
    type: number
    value_format_name: usd
    sql: ${TABLE}."COST" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: product_brand {
    hidden: yes
    group_label: "Product Info"
    type: string
    sql: ${TABLE}."PRODUCT_BRAND" ;;
  }

  dimension: product_category {
    hidden: yes
    group_label: "Product Info"
    type: string
    sql: ${TABLE}."PRODUCT_CATEGORY" ;;
  }

  dimension: product_department {
    hidden: yes
    group_label: "Product Info"
    type: string
    sql: ${TABLE}."PRODUCT_DEPARTMENT" ;;
  }

  dimension: product_distribution_center_id {
    hidden: yes
    group_label: "Product Info"
    type: number
    sql: ${TABLE}."PRODUCT_DISTRIBUTION_CENTER_ID" ;;
  }

  dimension: product_id {
    hidden: yes
    group_label: "Product Info"
    type: number
    # hidden: yes
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    hidden: yes
    group_label: "Product Info"
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_retail_price {
    hidden: yes
    group_label: "Product Info"
    type: number
    sql: ${TABLE}."PRODUCT_RETAIL_PRICE" ;;
  }

  dimension: product_sku {
    hidden: yes
    group_label: "Product Info"
    type: string
    sql: ${TABLE}."PRODUCT_SKU" ;;
  }

  dimension_group: sold {
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
    sql: ${TABLE}."SOLD_AT" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id, product_name, products.id, products.name, order_items.count]
  }

  measure: total_cost {
    type: sum
    value_format_name: usd
    sql: ${cost} ;;
    drill_fields: [product_category, product_brand, total_cost, average_cost]
  }

  measure: average_cost {
    type: average
    value_format_name: usd
    sql: ${cost} ;;
    drill_fields: [product_category, product_brand, total_cost, average_cost]
  }


}
