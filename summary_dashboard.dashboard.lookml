- dashboard: summary_dashboard
  title: Summary Dashboard
  layout: newspaper
  elements:
  - title: Total Revenue Yesterday
    name: Total Revenue Yesterday
    model: nj_casestudies
    explore: order_items
    type: single_value
    fields: [order_items.total_gross_revenue]
    filters:
      order_items.created_date: 1 days ago for 1 days
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 2
    col: 0
    width: 6
    height: 3
  - title: New Users Yesterday
    name: New Users Yesterday
    model: nj_casestudies
    explore: users
    type: single_value
    fields: [users.total_users_formatted]
    filters:
      users.created_date: 1 days ago for 1 days
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Gross Margin % Last 30 Days
    name: Gross Margin % Last 30 Days
    model: nj_casestudies
    explore: order_items
    type: single_value
    fields: [order_items.gross_margin_percentage]
    filters:
      order_items.created_date: 30 days ago for 30 days
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 2
    col: 12
    width: 6
    height: 3
  - title: Spend per Customer Last 30 Days
    name: Spend per Customer Last 30 Days
    model: nj_casestudies
    explore: order_items
    type: single_value
    fields: [order_items.average_spend_per_customer]
    filters:
      order_items.created_date: 30 days ago for 30 days
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 2
    col: 18
    width: 6
    height: 3
  - title: Annual Revenue
    name: Annual Revenue
    model: nj_casestudies
    explore: order_items
    type: looker_column
    fields: [order_items.created_year, order_items.total_gross_revenue]
    filters:
      order_items.created_year: 5 years
    sorts: [order_items.created_year desc]
    limit: 500
    dynamic_fields: [{table_calculation: total_gross_revenue_previous_year, label: Total
          Gross revenue Previous Year, expression: 'offset(${order_items.total_gross_revenue},-1)',
        value_format: !!null '', value_format_name: gbp, is_disabled: true, _kind_hint: measure,
        _type_hint: number}, {table_calculation: vs_previous_year, label: "% vs previous\
          \ year", expression: "${order_items.total_gross_revenue}/${total_gross_revenue_previous_year}-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_gross_revenue,
            id: order_items.total_gross_revenue, name: Total Gross Revenue}], showLabels: true,
        showValues: true, valueFormat: '"£"0,," M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: vs_previous_year, id: vs_previous_year, name: "% vs previous year"}],
        showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        type: linear}]
    x_axis_label: ''
    series_types:
      vs_ly: line
      vs_previous_year: line
    series_colors: {}
    show_dropoff: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    listen: {}
    row: 23
    col: 0
    width: 9
    height: 7
  - title: Revenue & Margin Last 12 Months
    name: Revenue & Margin Last 12 Months
    model: nj_casestudies
    explore: order_items
    type: looker_column
    fields: [order_items.total_gross_revenue, order_items.total_gross_margin, order_items.gross_margin_percentage,
      order_items.created_month]
    fill_fields: [order_items.created_month]
    filters:
      order_items.created_date: 12 months
    sorts: [order_items.created_month]
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
    point_style: circle_outline
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_gross_revenue,
            id: order_items.total_gross_revenue, name: Total Gross Revenue}, {axisId: order_items.total_gross_margin,
            id: order_items.total_gross_margin, name: Total Gross Margin}], showLabels: true,
        showValues: true, valueFormat: '"£"0," K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: order_items.gross_margin_percentage, id: order_items.gross_margin_percentage,
            name: Gross Margin Percentage}], showLabels: true, showValues: true, maxValue: 1,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    series_types:
      order_items.gross_margin_percentage: line
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 23
    col: 9
    width: 15
    height: 7
  - title: Total Gross Margin in L90D by Location
    name: Total Gross Margin in L90D by Location
    model: nj_casestudies
    explore: order_items
    type: looker_map
    fields: [users.location, order_items.total_gross_margin]
    filters:
      order_items.created_date: 90 days ago for 90 days
      users.location: inside box from 85.0511287798066, -540.0000000000001 to -85.0511287798066,
        540.0000000000001
    sorts: [order_items.total_gross_margin desc]
    limit: 5000
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 45.706179285330855
    map_longitude: -78.92578125000001
    map_zoom: 2
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 39
    col: 0
    width: 11
    height: 9
  - title: Top 10 Brands L90D by Gross Margin %
    name: Top 10 Brands L90D by Gross Margin %
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [products.brand, order_items.gross_margin_percentage, order_items.average_gross_margin,
      order_items.total_gross_revenue, order_items.percent_of_total_revenue]
    filters:
      order_items.created_date: 90 days ago for 90 days
      order_items.gross_margin_percentage: NOT NULL
    sorts: [order_items.total_gross_revenue desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: true
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
      order_items.gross_margin_percentage:
        is_active: true
      order_items.percent_of_total_revenue:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_value_format: {}
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 39
    col: 11
    width: 13
    height: 9
  - name: KPIs
    type: text
    title_text: KPIs
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Yearly Trends
    type: text
    title_text: Yearly Trends
    row: 21
    col: 0
    width: 24
    height: 2
  - name: Signups
    type: text
    title_text: Signups
    row: 5
    col: 0
    width: 24
    height: 2
  - name: Demographics of Customers
    type: text
    title_text: Demographics of Customers
    row: 30
    col: 0
    width: 24
    height: 2
  - title: Daily Gross Revenue L90D, Split by New/Longer-Term Customers
    name: Daily Gross Revenue L90D, Split by New/Longer-Term Customers
    model: nj_casestudies
    explore: users
    type: looker_column
    fields: [order_items.new_customer_order, order_items.total_gross_revenue, order_items.created_date]
    pivots: [order_items.new_customer_order]
    fill_fields: [order_items.created_date, order_items.new_customer_order]
    filters:
      order_items.created_date: 90 days ago for 90 days
    sorts: [order_items.created_date desc, order_items.new_customer_order desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - order_items.total_gross_revenue,
            id: Yes - order_items.total_gross_revenue, name: New Customer}, {axisId: No
              - order_items.total_gross_revenue, id: No - order_items.total_gross_revenue,
            name: Longer-Term Customer}], showLabels: true, showValues: true, valueFormat: '"£"0,"
          K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    series_types: {}
    series_colors: {}
    series_labels:
      Yes - order_items.total_gross_revenue: New Customer
      No - order_items.total_gross_revenue: Longer-Term Customer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: New Customer = Customer who signed up in last 90 days
    listen: {}
    row: 32
    col: 0
    width: 9
    height: 7
  - title: Avg Order Value, % New Customers L90D by Source
    name: Avg Order Value, % New Customers L90D by Source
    model: nj_casestudies
    explore: users
    type: looker_column
    fields: [users.traffic_source, order_items.average_spend_per_customer, number_of_orders_by_new_customer,
      order_items.number_of_orders]
    filters:
      order_items.created_date: 90 days ago for 90 days
    sorts: [users.traffic_source]
    limit: 500
    dynamic_fields: [{measure: number_of_orders_by_new_customer, based_on: order_items.number_of_orders,
        type: count_distinct, label: Number of Orders by New Customer, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${order_items.new_customer_order}\
          \ = yes"}, {table_calculation: percentage_orders_by_new_customer, label: Percentage
          Orders by New Customer, expression: "${number_of_orders_by_new_customer}\
          \ / ${order_items.number_of_orders}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.average_spend_per_customer,
            id: order_items.average_spend_per_customer, name: Average Spend per Customer}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: percentage_orders_by_new_customer, id: percentage_orders_by_new_customer,
            name: Percentage Orders by New Customer}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      percentage_orders_by_new_customer: scatter
    series_colors:
      percentage_orders_by_new_customer: "#10C871"
    defaults_version: 1
    hidden_fields: [number_of_orders_by_new_customer, order_items.number_of_orders]
    listen: {}
    row: 32
    col: 9
    width: 8
    height: 7
  - title: Prop of Revenue L30D by Age Group,  Gender
    name: Prop of Revenue L30D by Age Group,  Gender
    model: nj_casestudies
    explore: users
    type: looker_donut_multiples
    fields: [users.age_group, users.gender, order_items.total_gross_revenue]
    pivots: [users.age_group]
    fill_fields: [users.age_group]
    filters:
      order_items.created_date: 30 days ago for 30 days
    sorts: [users.age_group, users.gender]
    limit: 500
    show_value_labels: true
    font_size: 16
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
        reverse: false
    series_colors: {}
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    y_axes: []
    row: 32
    col: 17
    width: 7
    height: 7
  - title: Signups MTD vs Same Period LM
    name: Signups MTD vs Same Period LM
    model: nj_casestudies
    explore: users
    type: looker_column
    fields: [users.created_day_of_month, users.created_month, users.total_users]
    filters:
      users.created_date: 2 months
      users.created_month: before 0 days ago
    sorts: [users.created_day_of_month, users.created_month]
    limit: 500
    dynamic_fields: [{table_calculation: signups_lm, label: Signups LM, expression: 'if(extract_months(${users.created_month})=extract_months(now())-1,${users.total_users},0)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: runrate_lm, label: Runrate LM, expression: 'if(extract_months(${users.created_month})=extract_months(now())-1,
          round(running_total(${signups_lm}), 0),0)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: signups_tm,
        label: Signups TM, expression: 'if(${offset_needed}>0, offset(${users.total_users},
          ${offset_needed}), 0)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: runrate_tm,
        label: Runrate TM, expression: "if(extract_months(${users.created_month})=extract_months(now())-1,\
          \ \n  if(${users.created_day_of_month}<extract_days(now()),\n    round(running_total(${signups_tm}),0),\n\
          \    round(running_total(${signups_tm}) / (extract_days(now())-1) * ${users.created_day_of_month},\
          \ 0)\n    ),\n  0\n  )", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: last_month,
        label: Last month, expression: 'if(extract_months(${users.created_month})=extract_months(now())-1,
          yes, no)', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: offset_needed, label: Offset needed,
        expression: 'if(extract_months(${users.created_month}) = extract_months(now())-1,if(match(${users.created_day_of_month},
          ${users.created_day_of_month}) = row(), (count(${users.created_day_of_month})
          - match(${users.created_day_of_month}, offset(${users.created_day_of_month},
          count(${users.created_day_of_month}) - row()*2 + 1)) + 1), match(${users.created_day_of_month},
          ${users.created_day_of_month})), null) - row()', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
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
    y_axes: [{label: Daily Signups, orientation: left, series: [{axisId: signups_lm,
            id: signups_lm, name: Signups LM}, {axisId: signups_tm, id: signups_tm,
            name: Signups TM}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: Runrate, orientation: right,
        series: [{axisId: runrate_lm, id: runrate_lm, name: Runrate LM}, {axisId: runrate_tm,
            id: runrate_tm, name: Runrate TM}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: ''
    series_types:
      2020-07 - month_runrate: line
      2020-08 - month_runrate: line
      runrate_lm: line
      runrate_tm: line
    series_colors: {}
    series_labels:
      2020-07 - users.total_users_formatted: LM - Signups
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [users.total_users, users.created_month, offset_needed]
    hidden_points_if_no: [last_month]
    listen: {}
    row: 14
    col: 0
    width: 24
    height: 7
