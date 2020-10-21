view: users {
  sql_table_name: "PUBLIC"."USERS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: city {
    group_label: "Location Info"
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    group_label: "Location Info"
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
    drill_fields: [state, city]
  }

  dimension_group: created {
    label: "Signup"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month
    ]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: state {
    group_label: "Location Info"
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."TRAFFIC_SOURCE" ;;
  }

  dimension: zip {
    group_label: "Location Info"
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: total_users_formatted {
    type: count
    html: {{rendered_value}} || {{percent_total_users._rendered_value}};;
  }

  measure: total_users {
    type: count
  }

  dimension: age_group {
    type: tier
    tiers: [15,26,36,51,66]
    style: integer
    sql: ${age} ;;
    drill_fields: [gender]
  }

  dimension_group: since_signup {
    type: duration
    sql_start: ${created_raw} ;;
    sql_end: getdate() ;;
    intervals: [day, month]
  }

  dimension: new_customer {
    description: "Did the customer signup in the last 90 days?"
    type: yesno
    sql: ${days_since_signup} <= 90 ;;
  }

  measure: average_days_since_signup {
    type: average
    sql: ${days_since_signup} ;;
    drill_fields: [user_detail*, average_days_since_signup]
  }

  measure: average_months_since_signup {
    type: average
    sql: ${months_since_signup} ;;
    drill_fields: [user_detail*, average_months_since_signup]
  }

  dimension: location {
    group_label: "Location Info"
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
    drill_fields: [traffic_source]
  }

  measure: percent_total_users_formatted {
    type: percent_of_total
    sql: ${total_users} ;;
    html: {{rendered_value}} || {{total_users._rendered_value}} users ;;
    drill_fields: [user_detail*, percent_total_users_formatted]
  }

  measure: percent_total_users {
    type: percent_of_total
    sql: ${total_users} ;;
    drill_fields: [user_detail*, total_users, percent_total_users]
  }

  dimension: months_since_signup_group {
    type: tier
    tiers: [1, 3, 6, 12, 18, 24, 36]
    style: integer
    sql: ${months_since_signup} ;;
  }

  set: for_orders {
    fields: [city, country, latitude, longitude, state, zip, location,
      traffic_source, gender, age_group, new_customer,
      total_users_formatted, total_users, percent_total_users_formatted, percent_total_users]
  }

  set: user_detail {
    fields: [
      age_group,
      gender,
      traffic_source
    ]
  }

}
