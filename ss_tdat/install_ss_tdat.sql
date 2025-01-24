
--
--  ss_tdat Installation Script
--
--  Must be run as a SYSTEM User (DBA)
--
-- Command Line Parameters:
--   1 - INSTALL_SYSTEM_CONNECT: SYSTEM/password@TNSALIAS
--       i.e. pass the username and password for the SYSTEM user
--            and the TNSALIAS for the connection to the database.
--       The Data Load installation requires this connection information.
--

spool install_ss_tdat.log

define INSTALL_SYSTEM_CONNECT="&1."

-- For Oracle Change Data Capture (CDC) packages
set sqlprefix "~"

-- Escape character: "^P", CHR(16), DLE
set escape OFF
set escape ""

----------------------------------------
--  Prepare for Install
@dbi.sql "./installation_prepare.sql" "" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- DATA_LOAD Install

@dbi.sql "HR/DEPARTMENTS.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/EMPLOYEES.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOBS.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOB_HISTORY.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMERS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORIES.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEMS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PROMOTIONS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/WAREHOUSES.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/PRINT_MEDIA.cldr" "PM" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- Finalize Installation (Includes SPOOL OFF)
@dbi.sql "./installation_finalize.sql" "" "&INSTALL_SYSTEM_CONNECT."

spool off

