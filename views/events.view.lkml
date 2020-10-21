view: events {
  sql_table_name: "PUBLIC"."EVENTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}."BROWSER" ;;
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

  dimension: event_type {
    type: string
    sql: ${TABLE}."EVENT_TYPE" ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}."IP_ADDRESS" ;;
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

  dimension: os {
    type: string
    sql: ${TABLE}."OS" ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}."SEQUENCE_NUMBER" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
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

  dimension: uri {
    type: string
    sql: ${TABLE}."URI" ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: zip {
    group_label: "Location Info"
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id, users.first_name, users.id, users.last_name]
  }

  dimension: location {
    group_label: "Location Info"
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  measure: number_sessions {
    type: count_distinct
    sql: ${session_id} ;;
    drill_fields: [events_detail*]
  }

  dimension: is_user {
    type: yesno
    sql: ${user_id} IS NOT NULL ;;
  }

  measure: number_sessions_with_purchase {
    group_label: "Purchase info"
    type: count_distinct
    sql: ${session_id} ;;
    filters: [event_type: "Purchase"]
    drill_fields: [events_detail*, number_sessions_with_purchase]
  }

  measure: session_conversion_rate {
    group_label: "Purchase info"
    type: number
    value_format_name: percent_1
    sql: ${number_sessions_with_purchase} / nullif(${number_sessions}, 0) ;;
    drill_fields: [events_detail*]
  }

  set: events_detail {
    fields: [
      browser,
      traffic_source,
      number_sessions,
      session_conversion_rate
    ]
  }
}
