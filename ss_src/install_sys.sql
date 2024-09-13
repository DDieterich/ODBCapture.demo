
--
--  SYS Installation Script
--
--  Must be run as SYS
--

spool install_sys.log

set blockterminator off
set sqlblanklines on

----------------------------------------
-- USER Install

@dbi.sql "SYS/HR.user" "" ""
@dbi.sql "SYS/OE.user" "" ""
@dbi.sql "SYS/PM.user" "" ""

----------------------------------------
set sqlblanklines off
set blockterminator on

spool off

