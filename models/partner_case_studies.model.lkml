connection: "snowlooker"

# include all the views
include: "/views/**/*.view"
include: "/**/*.dashboard.lookml"

datagroup: partner_casestudies_default_datagroup {
  sql_trigger: SELECT count(*) FROM "PUBLIC"."ORDER_ITEMS";;
  max_cache_age: "1 hour"
}

persist_with: partner_casestudies_default_datagroup

explore: distribution_centers {hidden:yes}


explore: etl_jobs {hidden:yes}


explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: user_purchase_patterns {
    type: left_outer
    sql_on: ${users.id} = ${user_purchase_patterns.user_id} ;;
    relationship: one_to_one
  }
}


explore: inventory_items {
  hidden: yes
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: products {
  hidden: yes
  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}


explore: order_items {
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
    fields: [users.for_orders*]
  }
  join: user_purchase_patterns {
    type: left_outer
    sql_on: ${users.id} = ${user_purchase_patterns.user_id} ;;
    relationship: one_to_one
    fields: [user_id, is_repeat_customer, is_active]
  }
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
  join: order_patterns {
    type: left_outer
    sql_on: ${order_items.order_id} = ${order_patterns.order_id} ;;
    relationship: many_to_one
  }
}


explore: users {
  label: "Customers"
  join: order_items {
    type: left_outer
    sql_on: ${users.id} = ${order_items.user_id} ;;
    relationship: one_to_many
    fields: [order_items.for_users*]
  }
  join: user_cohort_size {
    view_label: "Users"
    type: left_outer
    sql_on: ${users.created_month} = ${user_cohort_size.signup_month} ;;
    relationship: many_to_one
  }
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
    fields: [cost]
  }
  join: user_purchase_patterns {
    type: left_outer
    sql_on: ${users.id} = ${user_purchase_patterns.user_id} ;;
    relationship: one_to_one
  }
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
    fields: [products.for_users*]
  }
}
