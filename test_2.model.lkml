connection: "dwhredshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: test_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_2_default_datagroup

explore: date {}

explore: dim_mstr_client {}

explore: dim_product {}

explore: dim_project {}

explore: dim_rep {}

explore: dim_status {}

explore: fact_tb_dtp_req_line_1 {}
