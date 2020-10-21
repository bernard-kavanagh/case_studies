- dashboard: order_patterns
  title: Order Patterns
  layout: newspaper
  elements:
  - title: "# Orders that lead to a Repeat Purchase by Category"
    name: "# Orders that lead to a Repeat Purchase by Category"
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [products.category, order_patterns.has_subsequent_order, order_items.number_of_orders]
    pivots: [order_patterns.has_subsequent_order]
    fill_fields: [order_patterns.has_subsequent_order]
    sorts: [order_patterns.has_subsequent_order desc 0, orders desc 0]
    limit: 500
    total: true
    row_total: right
    dynamic_fields: [{table_calculation: orders, label: "% Orders", expression: "${order_items.number_of_orders}\
          \ / ${order_items.number_of_orders:row_total}", value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}]
    query_timezone: GB
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      products.category: 235
    series_cell_visualizations:
      order_items.number_of_orders:
        is_active: true
      orders:
        is_active: true
        palette:
          palette_id: 39798c77-0126-4f2f-a920-8d7ce381fa5a
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: order_patterns.60_day_repeat_purchase_rate,
            id: order_patterns.60_day_repeat_purchase_rate, name: 60 Day Repeat Purchase
              Rate}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: [order_items.number_of_orders]
    listen: {}
    row: 9
    col: 0
    width: 24
    height: 9
  - title: "# Orders that lead to a Repeat Purchase by Top Brands"
    name: "# Orders that lead to a Repeat Purchase by Top Brands"
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [order_patterns.has_subsequent_order, order_items.number_of_orders, products.brand]
    pivots: [order_patterns.has_subsequent_order]
    sorts: [order_patterns.has_subsequent_order desc 0, order_items.number_of_orders
        desc 0]
    limit: 500
    total: true
    row_total: right
    dynamic_fields: [{table_calculation: orders, label: "% Orders", expression: "${order_items.number_of_orders}\
          \ / ${order_items.number_of_orders:row_total}", value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}]
    query_timezone: GB
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      products.brand: 241
    series_cell_visualizations:
      order_items.number_of_orders:
        is_active: true
      orders:
        is_active: true
        palette:
          palette_id: 39798c77-0126-4f2f-a920-8d7ce381fa5a
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '30'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: order_patterns.60_day_repeat_purchase_rate,
            id: order_patterns.60_day_repeat_purchase_rate, name: 60 Day Repeat Purchase
              Rate}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: [order_items.number_of_orders]
    note_state: collapsed
    note_display: above
    note_text: Ordered by most popular brands
    listen: {}
    row: 18
    col: 0
    width: 24
    height: 9
  - name: What categories and brands bring customers back, or drive them away?
    type: text
    title_text: What categories and brands bring customers back, or drive them away?
    row: 7
    col: 0
    width: 24
    height: 2
  - title: First-Order Behaviour
    name: First-Order Behaviour
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [order_patterns.is_first_purchase, order_items.average_order_size, order_items.gross_margin_percentage,
      order_items.average_gross_margin, order_items.average_sale_price, order_items.item_return_rate,
      order_patterns.60_day_repeat_purchase_rate]
    fill_fields: [order_patterns.is_first_purchase]
    sorts: [order_patterns.is_first_purchase]
    limit: 500
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      order_items.average_order_size:
        is_active: true
        palette:
          palette_id: 918d4622-8490-5b66-f5fb-97c1bdd55799
          collection_id: legacy
          custom_colors:
          - "#4FBC89"
          - "#4FBC89"
      order_items.average_sale_price:
        is_active: true
        palette:
          palette_id: d50e6233-acda-9d87-3e1d-188ffe0f6ed9
          collection_id: legacy
          custom_colors:
          - "#4FBC89"
          - "#4FBC89"
    series_value_format:
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
    listen: {}
    row: 29
    col: 0
    width: 24
    height: 3
  - name: First-Order Behaviour (2)
    type: text
    title_text: First-Order Behaviour
    row: 27
    col: 0
    width: 24
    height: 2
  - title: Top 10 Brands bought in First Orders - Female Customers
    name: Top 10 Brands bought in First Orders - Female Customers
    model: nj_casestudies
    explore: order_items
    type: looker_wordcloud
    fields: [products.brand, order_items.number_items_sold]
    filters:
      order_patterns.is_first_purchase: 'Yes'
      users.gender: Female
    sorts: [order_items.number_items_sold desc]
    limit: 10
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    rotation: false
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
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 32
    col: 0
    width: 12
    height: 4
  - title: Top 10 Brands bought in First Orders - Male Customers
    name: Top 10 Brands bought in First Orders - Male Customers
    model: nj_casestudies
    explore: order_items
    type: looker_wordcloud
    fields: [products.brand, order_items.number_items_sold]
    filters:
      order_patterns.is_first_purchase: 'Yes'
      users.gender: Male
    sorts: [order_items.number_items_sold desc]
    limit: 10
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    rotation: false
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
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 32
    col: 12
    width: 12
    height: 4
  - title: Revenue split by New/Returning Customers, L28D
    name: Revenue split by New/Returning Customers, L28D
    model: nj_casestudies
    explore: order_items
    type: looker_column
    fields: [order_patterns.is_first_purchase, order_items.total_gross_revenue, order_items.created_date]
    pivots: [order_patterns.is_first_purchase]
    fill_fields: [order_patterns.is_first_purchase, order_items.created_date]
    filters:
      order_items.created_date: 28 days ago for 28 days
    sorts: [order_items.total_gross_revenue desc 0, order_patterns.is_first_purchase
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - order_items.total_gross_revenue,
            id: Yes - order_items.total_gross_revenue, name: New Customer}, {axisId: No
              - order_items.total_gross_revenue, id: No - order_items.total_gross_revenue,
            name: Return Customer}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels:
      Yes - order_items.total_gross_revenue: New Customer
      No - order_items.total_gross_revenue: Return Customer
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 7
  - title: Top 10 Products bought in First Orders - Female Customers
    name: Top 10 Products bought in First Orders - Female Customers
    model: nj_casestudies
    explore: order_items
    type: looker_wordcloud
    fields: [order_items.number_items_sold, products.name]
    filters:
      order_patterns.is_first_purchase: 'Yes'
      users.gender: Female
    sorts: [order_items.number_items_sold desc]
    limit: 10
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    rotation: false
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
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 36
    col: 0
    width: 12
    height: 6
  - title: Top 10 Products bought in First Orders - Male Customers
    name: Top 10 Products bought in First Orders - Male Customers
    model: nj_casestudies
    explore: order_items
    type: looker_wordcloud
    fields: [order_items.number_items_sold, products.name]
    filters:
      order_patterns.is_first_purchase: 'Yes'
      users.gender: Male
    sorts: [order_items.number_items_sold desc]
    limit: 10
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    rotation: false
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
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 36
    col: 12
    width: 12
    height: 6
