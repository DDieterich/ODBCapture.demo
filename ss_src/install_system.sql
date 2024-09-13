
--
--  SYSTEM Installation Script
--
--  Must be run as SYSTEM
--

spool install_system.log

set blockterminator off
set sqlblanklines on

----------------------------------------
-- DIRECTORY Install

@dbi.sql "SYSTEM/MEDIA_DIR.dir" "" ""
@dbi.sql "SYSTEM/SS_OE_XMLDIR.dir" "" ""
@dbi.sql "SYSTEM/SUBDIR.dir" "" ""

----------------------------------------
-- GRANT Install

@dbi.sql "SYSTEM/HR_usr.grnt" "" ""
@dbi.sql "SYSTEM/OE_usr.grnt" "" ""
@dbi.sql "SYSTEM/PM_usr.grnt" "" ""

----------------------------------------
set sqlblanklines off
set blockterminator on

spool off

