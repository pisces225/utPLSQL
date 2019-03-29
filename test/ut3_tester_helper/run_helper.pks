create or replace package run_helper is

  procedure setup_cache_objects;
  procedure setup_cache;
  procedure cleanup_cache;
  procedure create_db_link;
  procedure drop_db_link;
  procedure db_link_setup;
  procedure db_link_cleanup;
  
  procedure create_suite_with_link;
  procedure drop_suite_with_link;
  
  procedure create_ut3$user#_tests;
  procedure drop_ut3$user#_tests;
  
  procedure create_test_suite;
  procedure drop_test_suite;
  procedure package_no_body;
  procedure drop_package_no_body;
  
  procedure create_trans_control;
  procedure drop_trans_control;
   
  procedure run(a_reporter ut3.ut_reporter_base := null);
  procedure run(a_path varchar2, a_reporter ut3.ut_reporter_base := null);
  procedure run(a_paths ut3.ut_varchar2_list, a_reporter ut3.ut_reporter_base := null);
  procedure run(a_paths ut3.ut_varchar2_list, a_test_files ut3.ut_varchar2_list, 
    a_reporter ut3.ut_reporter_base);
  function run(a_reporter ut3.ut_reporter_base := null) return ut3.ut_varchar2_list;
  function run(a_paths ut3.ut_varchar2_list, a_test_files ut3.ut_varchar2_list,
    a_reporter ut3.ut_reporter_base) return ut3.ut_varchar2_list;
  function run(a_path varchar2, a_reporter ut3.ut_reporter_base := null) 
    return ut3.ut_varchar2_list;
  function run(a_paths ut3.ut_varchar2_list, a_reporter ut3.ut_reporter_base := null) 
    return ut3.ut_varchar2_list;
  function run(a_test_files ut3.ut_varchar2_list, a_reporter ut3.ut_reporter_base) 
    return ut3.ut_varchar2_list;
    
  procedure test_rollback_type(a_procedure_name varchar2, a_rollback_type integer, a_expectation ut3_latest_release.ut_matcher);
  
end;
/
