view: products {
  sql_table_name: "PUBLIC"."PRODUCTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
    link: {
      label: "Google"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
    drill_fields: [category, name]
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
    drill_fields: [brand]
  }

  dimension: cost {
    hidden: yes
    type: number
    sql: ${TABLE}."COST" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
    drill_fields: [category, brand]
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."DISTRIBUTION_CENTER_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: retail_price {
    type: number
    value_format_name: gbp
    sql: ${TABLE}."RETAIL_PRICE" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }

  measure: number_of_products {
    type: count
    drill_fields: [category, brand, number_of_products]
  }

  measure: number_of_brands {
    type: count_distinct
    sql: ${brand} ;;
    drill_fields: [category, number_of_brands]
  }

  parameter: brand_filter {
    description: "To be used for Brand Grouping"
    type: string
    suggest_dimension: products.brand
  }

  parameter: category_filter {
    description: "To be used for Brand Grouping"
    type: string
    suggest_dimension: products.category
  }

  dimension: brand_grouping {
    type: string
    sql: {% if category_filter._in_query %}
            CASE WHEN ${brand} = {% parameter brand_filter %} THEN ${brand}
              WHEN ${brand} IN (SELECT DISTINCT brand FROM "PUBLIC"."PRODUCTS" WHERE category = {% parameter category_filter %} AND brand != {% parameter brand_filter %}) THEN 'Other Brands From '{% parameter category_filter %}''
              ELSE 'All Other Brands' END
          {% else %}
            CASE WHEN ${brand} = {% parameter brand_filter %} THEN ${brand}
              ELSE 'All Other Brands' END
          {% endif %} ;;
  }

  dimension: brand_grouping_rank {
    type: number
    sql: case when ${brand_grouping} = {% parameter brand_filter %} then 1
          when ${brand_grouping} = 'Other Brands From '{% parameter category_filter %}'' then 2
          else 3 end ;;
  }

  set: for_users {
    fields: [id, brand, category, cost, department, name,
      number_of_products, number_of_brands]
  }
}
