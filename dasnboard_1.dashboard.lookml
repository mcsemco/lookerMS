- dashboard: dashboard_1
  title: Dashboard 1
  layout: tile
  tile_size: 100
  elements:
  - title: Count of Transactions by Projects
    name: Count of Transactions by Projects
    model: test_2
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - fact_tb_dtp_req_line_1.count_transactions
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_label: Projects
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: fact_tb_dtp_req_line_1.count_transactions
        name: Fact Tb Dtp Req Line 1 Count Transactions
        axisId: fact_tb_dtp_req_line_1.count_transactions
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    listen:

      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
    row: 0
    col: 3
    width: 8
    height: 7
  filters:
  - name: MSTR Client
    title: MSTR Client
    type: field_filter
    default_value: NOVON
    allow_multiple_values: false
    required: false
    model: test_2
    explore: fact_tb_dtp_req_line_1
    listens_to_filters: []
    field: fact_tb_dtp_req_line_1.mstr_client_id
