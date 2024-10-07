
--
--  Report Status Script
--
--  Must be run as SYSTEM User (DBA)
--
-- Command Line Parameters:
--   1 - SYSTEM/password@TNSALIAS
--       i.e. pass the username and password for the SYSTEM user
--            and the TNSALIAS for the connection to the database.
--       The Data Load installation requires this connection information.
--
-- Note: odbcapture_installation_logs table will be created
--   to load installation logs (if not already available).
--

prompt Report Status not Implemented.

exit

----------------------------------------
prompt
prompt Load Installation Files
@"odbcapture_installation_logs.cldr" "&1."

----------------------------------------
-- Setup for Reports
set linesize 2499
set trimspool on
set echo off
set verify off
set termout on
set serveroutput on size unlimited format wrapped

----------------------------------------
prompt
prompt Reporting Summary of Build Type Log Errors
@"../grb_linked_install_scripts/summarize_install_log.sql" "ss_src"

----------------------------------------
-- Done with Reports
set linesize 80
set verify on
