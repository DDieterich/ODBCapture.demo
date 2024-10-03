
--
--  Custom Data Load Installation Script
--
--  Can be run as SYS, SYSTEM, "OE", or other DBA
--

----------------------------------------
set serveroutput on size unlimited format wrapped
select 'user: ' || u.username ||
       ', db: ' || d.name ||
       ', con: ' || sys_context('USERENV', 'CON_NAME') ||
       ', tstmp: ' || systimestamp   CONNECTION
 from  v$database d
 cross join user_users u;

----------------------------------------
prompt Identify this Module in V$SESSION
--set appinfo "SS Custom Data Load"

@oc_popul.sql

----------------------------------------
--set appinfo "Null"
--set appinfo off
prompt
prompt "SS Custom Data Load" Installation is Done.

