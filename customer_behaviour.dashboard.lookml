- dashboard: customer_behaviour
  title: Customer Behaviour
  layout: newspaper
  elements:
  - title: No of Sessions L30D, by User/New Visitor
    name: No of Sessions L30D, by User/New Visitor
    model: nj_casestudies
    explore: events
    type: looker_column
    fields: [events.is_user, events.number_sessions, user_purchase_patterns.is_active]
    pivots: [user_purchase_patterns.is_active]
    fill_fields: [events.is_user, user_purchase_patterns.is_active]
    filters:
      events.created_date: 30 days ago for 30 days
    sorts: [events.is_user desc, user_purchase_patterns.is_active]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: []
    x_axis_label: Has Signed Up?
    hide_legend: false
    series_labels:
      Yes - events.number_sessions: Is Active Customer
      No - events.number_sessions: Not Active Customer
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: Active Customer = Has ordered in last 90 days
    listen: {}
    row: 18
    col: 0
    width: 8
    height: 7
  - title: No of Users visited L30D, by LT Orders
    name: No of Users visited L30D, by LT Orders
    model: nj_casestudies
    explore: events
    type: looker_bar
    fields: [user_purchase_patterns.customer_lifetime_orders, users.total_users_formatted,
      events.session_conversion_rate]
    filters:
      events.created_date: 30 days ago for 30 days
      user_purchase_patterns.customer_lifetime_orders: "-Undefined"
    sorts: [user_purchase_patterns.customer_lifetime_orders]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: users.total_users_formatted,
            id: users.total_users_formatted, name: Total Users}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: events.session_conversion_rate,
            id: events.session_conversion_rate, name: Session Conversion Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types:
      events.session_conversion_rate: scatter
    series_colors:
      events.session_conversion_rate: "#10C871"
    series_labels:
      users.total_users_formatted: Total Users
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 18
    col: 16
    width: 8
    height: 7
  - title: No of Sessions L30D, by Traffic Source
    name: No of Sessions L30D, by Traffic Source
    model: nj_casestudies
    explore: events
    type: looker_column
    fields: [events.number_sessions, events.traffic_source, events.session_conversion_rate]
    filters:
      events.created_date: 30 days ago for 30 days
    sorts: [events.traffic_source]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: events.number_sessions,
            id: events.number_sessions, name: Number Sessions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: events.session_conversion_rate,
            id: events.session_conversion_rate, name: Session Conversion Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    series_types:
      events.conversion_rate: scatter
      events.session_conversion_rate: scatter
    series_colors:
      events.session_conversion_rate: "#10C871"
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 18
    col: 8
    width: 8
    height: 7
  - name: Customer Lifetime Behaviour
    type: text
    title_text: Customer Lifetime Behaviour
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Who has been visiting the site recently?
    type: text
    title_text: Who has been visiting the site recently?
    row: 16
    col: 0
    width: 24
    height: 2
  - name: What drives customer to return again?
    type: text
    title_text: What drives customer to return again?
    row: 25
    col: 0
    width: 24
    height: 2
  - title: First purchase split by Repeat/One-Time Customers, by Category
    name: First purchase split by Repeat/One-Time Customers, by Category
    model: nj_casestudies
    explore: order_items
    type: looker_bar
    fields: [products.category, users.total_users_formatted, user_purchase_patterns.is_repeat_customer]
    pivots: [user_purchase_patterns.is_repeat_customer]
    fill_fields: [user_purchase_patterns.is_repeat_customer]
    filters:
      order_patterns.is_first_purchase: 'Yes'
    sorts: [user_purchase_patterns.is_repeat_customer 0, total_not_repeat desc 0]
    limit: 500
    dynamic_fields: [{table_calculation: total_not_repeat, label: "% Total Not Repeat",
        expression: "if(${user_purchase_patterns.is_repeat_customer}=no,\n  ${users.total_users_formatted}/(${users.total_users_formatted}+pivot_offset(${users.total_users_formatted},\
          \ 1)), null) ", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: "# Customers Who Have Ordered", orientation: left, series: [
          {axisId: No - users.total_users_formatted, id: No - users.total_users_formatted,
            name: One-time Customer}, {axisId: Yes - users.total_users_formatted,
            id: Yes - users.total_users_formatted, name: Repeat Customer}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_labels:
      No - users.total_users_formatted: One-time Customer
      Yes - users.total_users_formatted: Repeat Customer
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [total_not_repeat]
    note_state: collapsed
    note_display: above
    note_text: Hover over to see % of customers who have ordered
    listen: {}
    row: 37
    col: 0
    width: 12
    height: 8
  - title: First purchase split by Repeat/One-Time Customers, by Brand
    name: First purchase split by Repeat/One-Time Customers, by Brand
    model: nj_casestudies
    explore: order_items
    type: looker_bar
    fields: [users.total_users_formatted, user_purchase_patterns.is_repeat_customer,
      products.brand]
    pivots: [user_purchase_patterns.is_repeat_customer]
    filters:
      order_patterns.is_first_purchase: 'Yes'
      users.total_users_formatted: ">100"
    sorts: [user_purchase_patterns.is_repeat_customer 0, total_not_repeat desc 0]
    limit: 500
    dynamic_fields: [{table_calculation: total_not_repeat, label: "% Total Not Repeat",
        expression: "if(${user_purchase_patterns.is_repeat_customer}=no,\n  ${users.total_users_formatted}/(${users.total_users_formatted}+pivot_offset(${users.total_users_formatted},\
          \ 1)), null) ", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: "# Customers Who Have Ordered", orientation: left, series: [
          {axisId: No - users.total_users_formatted, id: No - users.total_users_formatted,
            name: One-time Customer}, {axisId: Yes - users.total_users_formatted,
            id: Yes - users.total_users_formatted, name: Repeat Customer}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_labels:
      No - users.total_users_formatted: One-time Customer
      Yes - users.total_users_formatted: Repeat Customer
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [total_not_repeat]
    note_state: collapsed
    note_display: above
    note_text: Hover over to see % of customers who have ordered
    listen: {}
    row: 37
    col: 12
    width: 12
    height: 8
  - name: Any brands/categories that drive first-time customers away?
    type: text
    title_text: Any brands/categories that drive first-time customers away?
    row: 34
    col: 0
    width: 19
    height: 3
  - title: "% Customers Who do Not Repeat"
    name: "% Customers Who do Not Repeat"
    model: nj_casestudies
    explore: order_items
    type: single_value
    fields: [users.total_users_formatted, user_purchase_patterns.is_repeat_customer]
    pivots: [user_purchase_patterns.is_repeat_customer]
    fill_fields: [user_purchase_patterns.is_repeat_customer]
    filters:
      order_patterns.is_first_purchase: 'Yes'
    sorts: [user_purchase_patterns.is_repeat_customer 0, total_not_repeat desc 0]
    limit: 500
    dynamic_fields: [{table_calculation: total_not_repeat, label: "% Total Not Repeat",
        expression: "if(${user_purchase_patterns.is_repeat_customer}=no,\n  ${users.total_users_formatted}/(${users.total_users_formatted}+pivot_offset(${users.total_users_formatted},\
          \ 1)), null) ", value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      No - users.total_users_formatted: One-time Customer
      Yes - users.total_users_formatted: Repeat Customer
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [users.total_users_formatted]
    y_axes: []
    listen: {}
    row: 34
    col: 19
    width: 5
    height: 3
  - title: Proportion of revenue from customer cohorts, L28D
    name: Proportion of revenue from customer cohorts, L28D
    model: nj_casestudies
    explore: users
    type: looker_bar
    fields: [users.months_since_signup_group, order_items.total_gross_revenue]
    pivots: [users.months_since_signup_group]
    fill_fields: [users.months_since_signup_group]
    filters:
      order_items.created_date: 28 days ago for 28 days
    sorts: [users.months_since_signup_group]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Below 1 - 0 - order_items.total_gross_revenue,
            id: Below 1 - 0 - order_items.total_gross_revenue, name: Below 1}, {axisId: 1
              to 2 - 1 - order_items.total_gross_revenue, id: 1 to 2 - 1 - order_items.total_gross_revenue,
            name: 1 to 2}, {axisId: 3 to 5 - 2 - order_items.total_gross_revenue,
            id: 3 to 5 - 2 - order_items.total_gross_revenue, name: 3 to 5}, {axisId: 6
              to 11 - 3 - order_items.total_gross_revenue, id: 6 to 11 - 3 - order_items.total_gross_revenue,
            name: 6 to 11}, {axisId: 12 to 17 - 4 - order_items.total_gross_revenue,
            id: 12 to 17 - 4 - order_items.total_gross_revenue, name: 12 to 17}, {
            axisId: 18 to 23 - 5 - order_items.total_gross_revenue, id: 18 to 23 -
              5 - order_items.total_gross_revenue, name: 18 to 23}, {axisId: 24 to
              35 - 6 - order_items.total_gross_revenue, id: 24 to 35 - 6 - order_items.total_gross_revenue,
            name: 24 to 35}, {axisId: 36 or Above - 7 - order_items.total_gross_revenue,
            id: 36 or Above - 7 - order_items.total_gross_revenue, name: 36 or Above}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'Cohorts based on # Months Since Signup'
    listen: {}
    row: 47
    col: 0
    width: 24
    height: 6
  - name: Cohort Analysis
    type: text
    title_text: Cohort Analysis
    row: 45
    col: 0
    width: 24
    height: 2
  - title: Revenue by Signup Month
    name: Revenue by Signup Month
    model: nj_casestudies
    explore: users
    type: looker_grid
    fields: [users.created_month, user_cohort_size.signups, order_items.total_gross_revenue,
      order_items.months_signup_to_order]
    pivots: [order_items.months_signup_to_order]
    filters:
      users.created_month: 12 months ago for 12 months
      order_items.months_signup_to_order: NOT NULL
    sorts: [order_items.months_signup_to_order 0, users.created_month]
    limit: 500
    row_total: right
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns: {}
    column_order: ["$$$_row_numbers_$$$", users.created_month, user_cohort_size.signups,
      0_order_items.total_gross_revenue, 1_order_items.total_gross_revenue, 2_order_items.total_gross_revenue,
      3_order_items.total_gross_revenue, 4_order_items.total_gross_revenue, 5_order_items.total_gross_revenue,
      6_order_items.total_gross_revenue, 7_order_items.total_gross_revenue, 8_order_items.total_gross_revenue,
      9_order_items.total_gross_revenue, 10_order_items.total_gross_revenue, 11_order_items.total_gross_revenue,
      12_order_items.total_gross_revenue, "$$$_row_total_$$$_order_items.total_gross_revenue"]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      users.created_month: 149
      user_cohort_size.signups: 120
    series_cell_visualizations:
      order_items.average_spend_per_customer:
        is_active: false
      order_items.total_sale_price:
        is_active: false
        value_display: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging2,
          options: {steps: 5, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [order_items.total_gross_revenue]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields:
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 53
    col: 0
    width: 12
    height: 9
  - title: Revenue per Signup Cohort
    name: Revenue per Signup Cohort
    model: nj_casestudies
    explore: users
    type: looker_grid
    fields: [users.created_month, user_cohort_size.signups, order_items.months_signup_to_order,
      user_cohort_size.revenue_per_month_cohort]
    pivots: [order_items.months_signup_to_order]
    filters:
      users.created_month: 12 months ago for 12 months
      order_items.months_signup_to_order: NOT NULL
    sorts: [order_items.months_signup_to_order 0, users.created_month 0]
    limit: 500
    row_total: right
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns: {}
    column_order: ["$$$_row_numbers_$$$", users.created_month, 0_user_cohort_size.revenue_per_cohort,
      1_user_cohort_size.revenue_per_cohort, 2_user_cohort_size.revenue_per_cohort,
      3_user_cohort_size.revenue_per_cohort, 4_user_cohort_size.revenue_per_cohort,
      5_user_cohort_size.revenue_per_cohort, 6_user_cohort_size.revenue_per_cohort,
      7_user_cohort_size.revenue_per_cohort, 8_user_cohort_size.revenue_per_cohort,
      9_user_cohort_size.revenue_per_cohort, 10_user_cohort_size.revenue_per_cohort,
      11_user_cohort_size.revenue_per_cohort, 12_user_cohort_size.revenue_per_cohort,
      "$$$_row_total_$$$_user_cohort_size.revenue_per_cohort"]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      users.created_month: 132
      user_cohort_size.signups: 120
    series_cell_visualizations:
      order_items.average_spend_per_customer:
        is_active: false
      order_items.total_sale_price:
        is_active: false
        value_display: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [user_cohort_size.revenue_per_month_cohort]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [user_cohort_size.signups]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    listen: {}
    row: 53
    col: 12
    width: 12
    height: 9
  - title: "% Signups by Source, L12FM"
    name: "% Signups by Source, L12FM"
    model: nj_casestudies
    explore: users
    type: looker_line
    fields: [users.created_month, users.traffic_source, users.total_users]
    pivots: [users.traffic_source]
    fill_fields: [users.created_month]
    filters:
      users.created_date: 12 months ago for 12 months
    sorts: [users.created_month desc, users.traffic_source]
    limit: 500
    row_total: right
    dynamic_fields: [{table_calculation: signups, label: "% Signups", expression: "${users.total_users}/${users.total_users:row_total}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    defaults_version: 1
    hidden_fields: [users.total_users]
    row: 62
    col: 0
    width: 12
    height: 9
  - title: Lifetime Orders Customer Distribution
    name: Lifetime Orders Customer Distribution
    model: nj_casestudies
    explore: users
    type: looker_bar
    fields: [user_purchase_patterns.customer_lifetime_orders, users.percent_total_users_formatted]
    fill_fields: [user_purchase_patterns.customer_lifetime_orders]
    filters:
      user_purchase_patterns.has_ordered: 'Yes'
    sorts: [user_purchase_patterns.customer_lifetime_orders]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: []
    series_labels:
      users.percent_total_users_formatted: Percent Total Users
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 7
  - title: Lifetime Revenue Customer Distribution
    name: Lifetime Revenue Customer Distribution
    model: nj_casestudies
    explore: users
    type: looker_bar
    fields: [user_purchase_patterns.customer_lifetime_revenue, users.percent_total_users_formatted]
    fill_fields: [user_purchase_patterns.customer_lifetime_revenue]
    filters:
      user_purchase_patterns.has_ordered: 'Yes'
    sorts: [user_purchase_patterns.customer_lifetime_revenue]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: []
    series_labels:
      users.percent_total_users_formatted: Percent Total Users
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen: {}
    row: 2
    col: 8
    width: 8
    height: 7
  - title: Avg Customer LT Rev by Signup Month
    name: Avg Customer LT Rev by Signup Month
    model: nj_casestudies
    explore: users
    type: looker_grid
    fields: [users.created_month, user_purchase_patterns.average_lifetime_revenue]
    fill_fields: [users.created_month]
    sorts: [users.created_month desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      user_purchase_patterns.average_lifetime_revenue:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: 99d2d3ac-7579-41a0-b16c-a381b7ae96da}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 2
    col: 16
    width: 8
    height: 7
  - title: Monthly Rev Contribution by Lifetime Orders Grouping
    name: Monthly Rev Contribution by Lifetime Orders Grouping
    model: nj_casestudies
    explore: users
    type: looker_column
    fields: [user_purchase_patterns.customer_lifetime_orders, order_items.created_month,
      order_items.total_gross_revenue]
    pivots: [user_purchase_patterns.customer_lifetime_orders]
    fill_fields: [order_items.created_month, user_purchase_patterns.customer_lifetime_orders]
    filters:
      order_items.created_date: 12 months
    sorts: [user_purchase_patterns.customer_lifetime_orders, order_items.created_month
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
        reverse: false
    series_colors: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 9
    col: 0
    width: 12
    height: 7
  - title: Monthly Rev Contribution by Lifetime Rev Grouping
    name: Monthly Rev Contribution by Lifetime Rev Grouping
    model: nj_casestudies
    explore: users
    type: looker_column
    fields: [order_items.created_month, order_items.total_gross_revenue, user_purchase_patterns.customer_lifetime_revenue]
    pivots: [user_purchase_patterns.customer_lifetime_revenue]
    fill_fields: [order_items.created_month, user_purchase_patterns.customer_lifetime_revenue]
    filters:
      order_items.created_date: 12 months
    sorts: [order_items.created_month desc, user_purchase_patterns.customer_lifetime_revenue]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
        reverse: false
    series_colors: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 9
    col: 12
    width: 12
    height: 7
  - title: Repeat/One-Time Customers by Traffic Source, L30D
    name: Repeat/One-Time Customers by Traffic Source, L30D
    model: nj_casestudies
    explore: users
    type: looker_column
    fields: [user_purchase_patterns.is_repeat_customer, users.total_users_formatted,
      users.traffic_source]
    pivots: [user_purchase_patterns.is_repeat_customer]
    fill_fields: [user_purchase_patterns.is_repeat_customer]
    filters:
      order_items.created_date: 30 days ago for 30 days
    sorts: [user_purchase_patterns.is_repeat_customer, users.traffic_source]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: Total Customers, orientation: left, series: [{axisId: No - users.total_users_formatted,
            id: No - users.total_users_formatted, name: One-time customer}, {axisId: Yes
              - users.total_users_formatted, id: Yes - users.total_users_formatted,
            name: Repeat customer}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_labels:
      Yes - users.total_users_formatted: Repeat customer
      No - users.total_users_formatted: One-time customer
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: Hover over to see percentages
    listen: {}
    row: 27
    col: 0
    width: 12
    height: 7
  - title: Signup to Order Retention
    name: Signup to Order Retention
    model: nj_casestudies
    explore: users
    type: looker_grid
    fields: [order_items.months_signup_to_order, users.created_month, users.total_users,
      user_cohort_size.signups]
    pivots: [order_items.months_signup_to_order]
    filters:
      users.created_date: 12 months ago for 12 months
      order_items.created_date: 12 months ago for 12 months
    sorts: [users.created_month, order_items.months_signup_to_order, user_cohort_size.signups]
    limit: 500
    dynamic_fields: [{table_calculation: signups_that_purchased, label: "% Signups\
          \ that Purchased", expression: "${users.total_users} / ${user_cohort_size.signups}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      user_cohort_size.signups:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 10, stepped: true}}, bold: false, italic: false, strikethrough: false,
        fields: [user_cohort_size.signups]}, {type: along a scale..., value: !!null '',
        background_color: "#62bad4", font_color: !!null '', color_application: {collection_id: legacy,
          palette_id: legacy_diverging2, options: {steps: 10, stepped: true}}, bold: false,
        italic: false, strikethrough: false, fields: [signups_that_purchased]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    x_axis_label: Months Since Signup
    hidden_series: []
    series_point_styles: {}
    swap_axes: false
    defaults_version: 1
    hidden_fields: [users.total_users]
    series_types: {}
    listen: {}
    row: 62
    col: 12
    width: 12
    height: 9
  - title: Repeat Purchase Behaviour
    name: Repeat Purchase Behaviour
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [user_purchase_patterns.is_repeat_customer, users.total_users_formatted,
      order_items.total_gross_revenue, order_items.percent_of_total_revenue, order_items.average_sale_price,
      order_items.average_order_size]
    fill_fields: [user_purchase_patterns.is_repeat_customer]
    sorts: [users.total_users_formatted desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", user_purchase_patterns.is_repeat_customer,
      users.total_users, order_items.total_gross_revenue, order_items.percent_of_total_revenue,
      order_items.average_sale_price, order_items.average_order_size]
    show_totals: true
    show_row_totals: true
    series_labels:
      order_items.total_gross_revenue: GMV
      order_items.percent_of_total_revenue: "% GMV"
      order_items.average_sale_price: Avg Order Value
      order_items.average_order_size: Avg Order Size
      user_purchase_patterns.is_repeat_customer: Repeat Customer
      users.total_users_formatted: "# Customers"
    series_column_widths:
      users.total_users: 135
      order_items.total_gross_revenue: 134
      order_items.percent_of_total_revenue: 71
      order_items.average_sale_price: 126
      order_items.average_order_size: 117
      user_purchase_patterns.is_repeat_customer: 136
    series_cell_visualizations:
      users.total_users:
        is_active: true
      order_items.total_gross_revenue:
        is_active: true
      order_items.average_order_size:
        is_active: false
    series_value_format:
      users.total_users:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      order_items.total_gross_revenue:
        name: usd_0
        format_string: "$#,##0"
        label: U.S. Dollars (0)
      order_items.average_order_size:
        name: decimal_2
        format_string: "#,##0.00"
        label: Decimals (2)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    y_axes: []
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 27
    col: 12
    width: 12
    height: 4
  - title: Repeat Purchase Behaviour cont
    name: Repeat Purchase Behaviour cont
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [user_purchase_patterns.is_repeat_customer, order_items.percent_users_with_returns,
      order_items.item_return_rate, order_items.average_days_order_to_delivery]
    fill_fields: [user_purchase_patterns.is_repeat_customer]
    sorts: [order_items.average_days_order_to_delivery]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      user_purchase_patterns.is_repeat_customer: Repeat Customer
      order_items.percent_users_with_returns: "% Customers with Returns"
      order_items.item_return_rate: Item Return Rate
      order_items.average_days_order_to_delivery: Avg Days Order to Delivery
    series_cell_visualizations:
      users.total_users:
        is_active: true
      order_items.total_gross_revenue:
        is_active: true
      order_items.item_return_rate:
        is_active: true
      order_items.percent_users_with_returns:
        is_active: true
    series_value_format:
      order_items.average_days_order_to_delivery:
        name: decimal_1
        format_string: "#,##0.0"
        label: Decimals (1)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    y_axes: []
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 31
    col: 12
    width: 12
    height: 3
