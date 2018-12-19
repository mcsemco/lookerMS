connection: "dwhredshift"
include: "*.dashboard.lookml"
# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: test_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_2_default_datagroup
explore: fact_tb_dtp_req_line_1 {}
