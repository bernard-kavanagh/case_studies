- dashboard: brand_comparisons
  title: Brand Comparisons
  layout: newspaper
  elements:
  - title: Sales Volume
    name: Sales Volume
    model: nj_casestudies
    explore: order_items
    type: looker_column
    fields: [products.brand_grouping_rank, products.brand_grouping, order_items.number_items_sold]
    pivots: [products.brand_grouping_rank, products.brand_grouping]
    sorts: [products.brand_grouping_rank, products.brand_grouping]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.number_items_sold,
            id: 3 - All Other Brands - order_items.number_items_sold, name: 3 - All
              Other Brands}], showLabels: true, showValues: true, valueFormat: '0.0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_dropoff: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Order Date: order_items.created_week
      Brand Filter: products.brand_filter
      Comparison Category: products.category_filter
    row: 5
    col: 0
    width: 9
    height: 7
  - title: Sales Volume by week
    name: Sales Volume by week
    model: nj_casestudies
    explore: order_items
    type: looker_line
    fields: [products.brand_grouping_rank, products.brand_grouping, order_items.number_items_sold,
      order_items.created_week]
    pivots: [products.brand_grouping_rank, products.brand_grouping]
    fill_fields: [order_items.created_week]
    sorts: [products.brand_grouping_rank, order_items.created_week desc, products.brand_grouping]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.number_items_sold,
            id: 3 - All Other Brands - order_items.number_items_sold, name: 3 - All
              Other Brands}], showLabels: true, showValues: true, valueFormat: '0.00,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Order Date: order_items.created_week
      Brand Filter: products.brand_filter
      Comparison Category: products.category_filter
    row: 5
    col: 9
    width: 15
    height: 9
  - title: Revenue
    name: Revenue
    model: nj_casestudies
    explore: order_items
    type: looker_column
    fields: [products.brand_grouping_rank, products.brand_grouping, order_items.total_gross_revenue]
    pivots: [products.brand_grouping_rank, products.brand_grouping]
    sorts: [products.brand_grouping_rank, products.brand_grouping]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_gross_revenue,
            id: 3 - All Other Brands - order_items.total_gross_revenue, name: 3 -
              All Other Brands}], showLabels: true, showValues: true, valueFormat: '"$"#,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_dropoff: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Order Date: order_items.created_week
      Brand Filter: products.brand_filter
      Comparison Category: products.category_filter
    row: 16
    col: 0
    width: 9
    height: 7
  - title: Revenue by week
    name: Revenue by week
    model: nj_casestudies
    explore: order_items
    type: looker_line
    fields: [products.brand_grouping_rank, products.brand_grouping, order_items.created_week,
      order_items.total_gross_revenue]
    pivots: [products.brand_grouping_rank, products.brand_grouping]
    fill_fields: [order_items.created_week]
    sorts: [products.brand_grouping_rank, order_items.created_week desc, products.brand_grouping]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_gross_revenue,
            id: 3 - All Other Brands - order_items.total_gross_revenue, name: 3 -
              All Other Brands}], showLabels: true, showValues: true, valueFormat: '"$"0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Order Date: order_items.created_week
      Brand Filter: products.brand_filter
      Comparison Category: products.category_filter
    row: 14
    col: 9
    width: 15
    height: 9
  - title: Number of Brands in each Grouping
    name: Number of Brands in each Grouping
    model: nj_casestudies
    explore: order_items
    type: looker_grid
    fields: [products.brand_grouping_rank, products.brand_grouping, products.number_of_brands]
    sorts: [products.brand_grouping_rank, products.brand_grouping]
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
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.number_items_sold,
            id: 3 - All Other Brands - order_items.number_items_sold, name: 3 - All
              Other Brands}], showLabels: true, showValues: true, valueFormat: '0.0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [products.brand_grouping_rank]
    listen:
      Order Date: order_items.created_week
      Brand Filter: products.brand_filter
      Comparison Category: products.category_filter
    row: 12
    col: 0
    width: 9
    height: 4
  - name: How does a brand's performance compare to others?
    type: text
    title_text: How does a brand's performance compare to others?
    subtitle_text: Please filter a brand. The category filter can be populated to
      compare against brands in the category, or left empty to compare against all
      brands
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Order Date
    title: Order Date
    type: date_filter
    default_value: 12 weeks ago for 12 weeks
    allow_multiple_values: true
    required: false
  # - name: Brand Filter
  #   title: Brand Filter
  #   type: string_filter
  #   default_value: '"Levi''s"'
  #   allow_multiple_values: false
  #   required: true
  #   model: nj_casestudies
  #   explore: order_items
  #   listens_to_filters: []
  #   field: products.brand_filter
  # - name: Comparison Category
  #   title: Comparison Category
  #   type: string_filter
  #   default_value: Jeans
  #   allow_multiple_values: false
  #   required: false
  #   model: nj_casestudies
  #   explore: order_items
  #   listens_to_filters: []
  #   field: products.category_filter
