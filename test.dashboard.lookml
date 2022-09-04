- dashboard: gcp_project_summary
  title: GCP Project Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: rgwuhNrPG9iGRCESzPj5Rh
  elements:
  - title: Number Of Projects
    name: Number Of Projects
    model: Billing
    explore: ma_fin_ops_gcp
    type: single_value
    fields: [ma_fin_ops_gcp.Projects]
    filters:
      ma_fin_ops_gcp.project_name: "-NULL"
    limit: 500
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#AFE1AF"
    single_value_title: Total Project (AS On Date)
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
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
    font_size: 12
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 4
  - title: 'Detailed View of Project and Cost (YTD) '
    name: 'Detailed View of Project and Cost (YTD) '
    model: Billing
    explore: ma_fin_ops_gcp
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [ma_fin_ops_gcp.project_name, ma_fin_ops_gcp.project_ancestors_resource_name,
      ma_fin_ops_gcp.service_description, ma_fin_ops_gcp.cost_type, ma_fin_ops_gcp.total_cost]
    filters:
      ma_fin_ops_gcp.service_description: "-NULL"
      ma_fin_ops_gcp.total_cost: NOT NULL
    sorts: [ma_fin_ops_gcp.total_cost desc]
    total: true
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    theme: traditional
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: true
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|ma_fin_ops_gcp.project_name: Project Name
    heading|ma_fin_ops_gcp.project_name: ''
    hide|ma_fin_ops_gcp.project_name: false
    label|ma_fin_ops_gcp.service_description: Services
    heading|ma_fin_ops_gcp.service_description: ''
    hide|ma_fin_ops_gcp.service_description: false
    label|ma_fin_ops_gcp.resource_name: Resource Name
    heading|ma_fin_ops_gcp.resource_name: ''
    hide|ma_fin_ops_gcp.resource_name: false
    subtotalDepth: '1'
    label|ma_fin_ops_gcp.total_cost: Total Cost
    heading|ma_fin_ops_gcp.total_cost: ''
    style|ma_fin_ops_gcp.total_cost: normal
    reportIn|ma_fin_ops_gcp.total_cost: '1'
    unit|ma_fin_ops_gcp.total_cost: ''
    comparison|ma_fin_ops_gcp.total_cost: no_variance
    switch|ma_fin_ops_gcp.total_cost: false
    var_num|ma_fin_ops_gcp.total_cost: true
    var_pct|ma_fin_ops_gcp.total_cost: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_full_field_name: false
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
    defaults_version: 0
    series_types: {}
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    truncate_column_names: false
    listen:
      Project Name: ma_fin_ops_gcp.project_name
    row: 12
    col: 12
    width: 12
    height: 6
  - title: Total Cost
    name: Total Cost
    model: Billing
    explore: ma_fin_ops_gcp
    type: single_value
    fields: [ma_fin_ops_gcp.total_cost]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${ma_fin_ops_gcp.total_cost}/offset(${ma_fin_ops_gcp.total_cost},1)\
          \ -1", label: Percentage change MOM, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage_change_mom, _type_hint: number,
        is_disabled: true}]
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: ''
    single_value_title: Total Project Cost (YTD)
    value_format: ''
    comparison_label: Percentage Change MOM
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#3EB0D5",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 0
    col: 7
    width: 7
    height: 4
  - title: Project Heirarchy
    name: Project Heirarchy
    model: Billing
    explore: ma_fin_ops_gcp
    type: collapsible_tree
    fields: [ma_fin_ops_gcp.billing_account_id, ma_fin_ops_gcp.project_name, ma_fin_ops_gcp.project_ancestors_resource_name,
      ma_fin_ops_gcp.service_description, ma_fin_ops_gcp.resource_name]
    filters:
      ma_fin_ops_gcp.project_ancestry_numbers: "-NULL"
      ma_fin_ops_gcp.resource_name: "-NULL"
    sorts: [ma_fin_ops_gcp.project_ancestors_resource_name]
    limit: 10
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    series_types: {}
    listen:
      Billing Account ID: ma_fin_ops_gcp.billing_account_id
      Project Name: ma_fin_ops_gcp.project_name
    row: 18
    col: 0
    width: 24
    height: 8
  - title: Project Wise Cost (YTD)
    name: Project Wise Cost (YTD)
    model: Billing
    explore: ma_fin_ops_gcp
    type: looker_column
    fields: [ma_fin_ops_gcp.project_name, ma_fin_ops_gcp.total_cost]
    filters: {}
    sorts: [ma_fin_ops_gcp.total_cost desc]
    limit: 50
    query_timezone: UTC
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
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
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
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ma_fin_ops_gcp.total_cost,
            id: ma_fin_ops_gcp.total_cost, name: Total Cost}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: log}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_types: {}
    series_colors:
      ma_fin_ops_gcp.total_cost: "#4276BE"
    series_point_styles:
      ma_fin_ops_gcp.total_cost: auto
    reference_lines: []
    trend_lines: []
    show_dropoff: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Project Name: ma_fin_ops_gcp.project_name
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Project Cost Month Wise
    name: Project Cost Month Wise
    model: Billing
    explore: ma_fin_ops_gcp
    type: looker_column
    fields: [ma_fin_ops_gcp.usage_start_month_name, ma_fin_ops_gcp.project_name, ma_fin_ops_gcp.total_cost]
    pivots: [ma_fin_ops_gcp.project_name]
    filters:
      ma_fin_ops_gcp.total_cost: NOT NULL
      ma_fin_ops_gcp.usage_start_month_name: March,April,May
    sorts: [ma_fin_ops_gcp.total_cost desc 0, ma_fin_ops_gcp.project_name]
    limit: 500
    column_limit: 1
    query_timezone: UTC
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
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
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Cost, orientation: left, series: [{axisId: ma_fin_ops_gcp.total_cost,
            id: AWS-to-GCP-Meesho - ma_fin_ops_gcp.total_cost, name: AWS-to-GCP-Meesho}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    x_axis_label: Month
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    hidden_series: []
    hide_legend: false
    series_types: {}
    series_colors: {}
    reference_lines: []
    trend_lines: []
    swap_axes: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Project Name: ma_fin_ops_gcp.project_name
    row: 4
    col: 12
    width: 12
    height: 8
  - title: Last 7 Days Cost project Wise
    name: Last 7 Days Cost project Wise
    model: Billing
    explore: ma_fin_ops_gcp
    type: looker_line
    fields: [ma_fin_ops_gcp.project_name, ma_fin_ops_gcp.total_cost, ma_fin_ops_gcp.usage_start_date]
    pivots: [ma_fin_ops_gcp.project_name]
    filters:
      ma_fin_ops_gcp.usage_start_date: 2022/05/24 to 2022/05/31
    sorts: [ma_fin_ops_gcp.total_cost desc 0, ma_fin_ops_gcp.usage_start_date, ma_fin_ops_gcp.project_name]
    limit: 500
    column_limit: 1
    query_timezone: UTC
    x_axis_gridlines: true
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Cost, orientation: left, series: [{axisId: AWS-to-GCP-Meesho
              - ma_fin_ops_gcp.total_cost, id: AWS-to-GCP-Meesho - ma_fin_ops_gcp.total_cost,
            name: AWS-to-GCP-Meesho}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: custom, tickDensityCustom: 35, type: linear}]
    x_axis_label: Day
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors: {}
    series_point_styles: {}
    reference_lines: []
    trend_lines: []
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Project Name: ma_fin_ops_gcp.project_name
    row: 12
    col: 0
    width: 12
    height: 6
  - title: Project Wise Services Count (YTD)
    name: Project Wise Services Count (YTD)
    model: Billing
    explore: ma_fin_ops_gcp
    type: looker_pie
    fields: [ma_fin_ops_gcp.project_name, ma_fin_ops_gcp.Services_Count]
    filters: {}
    sorts: [ma_fin_ops_gcp.Services_Count desc]
    limit: 5
    query_timezone: UTC
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: ma_fin_ops_gcp.Services_Count,
            id: ma_fin_ops_gcp.Services_Count, name: Services Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
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
    listen:
      Project Name: ma_fin_ops_gcp.project_name
    row: 0
    col: 14
    width: 10
    height: 4
  filters:
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Billing
    explore: ma_fin_ops_gcp
    listens_to_filters: []
    field: ma_fin_ops_gcp.project_name
  - name: Billing Account ID
    title: Billing Account ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: Billing
    explore: ma_fin_ops_gcp
    listens_to_filters: []
    field: ma_fin_ops_gcp.billing_account_id
