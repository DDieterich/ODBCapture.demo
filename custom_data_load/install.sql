
--
--  Custom Data Load Installation Script
--
--  Must be run as SYS
--
-- Command Line Parameters:
--   1 - TOP_PDB_SYSTEM: SYSTEM/password@TNSALIAS
--       i.e. pass the username and password for the SYSTEM user
--            and the TNSALIAS for the connection to the pluggable database.
--       The Data Load installation requires this connection information.
--

--  NOTE: If running in a Linux based Docker Container from a Windows FileSystem Mount, run this first:
--    dos2unix -f -o ../install/*/*.csv ../install/*/*/*.csv

define TOP_PDB_SYSTEM="&1."

----------------------------------------
--prompt Setup Abort on Error
--WHENEVER SQLERROR EXIT SQL.SQLCODE
--WHENEVER OSERROR EXIT

----------------------------------------
--set serveroutput on size unlimited format wrapped
--select 'user: ' || u.username ||
--       ', db: ' || d.name ||
--       ', con: ' || sys_context('USERENV', 'CON_NAME') ||
--       ', tstmp: ' || systimestamp   CONNECTION
-- from  v$database d
-- cross join user_users u;

----------------------------------------
prompt Identify this Module in V$SESSION
set appinfo "SS Custom Data Load"

----------------------------------------
--prompt
--prompt **************************
--prompt *  Run SYS Installation  *
--prompt **************************
--prompt

----------------------------------------
--prompt Setup Continue on Error
--WHENEVER SQLERROR CONTINUE
--WHENEVER OSERROR CONTINUE

----------------------------------------
prompt
prompt *****************************
prompt *  Run SYSTEM Installation  *
prompt *****************************
prompt

connect &TOP_PDB_SYSTEM.
set serveroutput on size unlimited format wrapped
select 'user: ' || u.username ||
       ', db: ' || d.name ||
       ', con: ' || sys_context('USERENV', 'CON_NAME') ||
       ', tstmp: ' || systimestamp   CONNECTION
 from  v$database d
 cross join user_users u;

spool oc_popul.log
@oc_popul.sql

spool off

----------------------------------------
set appinfo "Null"
set appinfo off
prompt
prompt "SS Custom Data Load" Installation is Done.
