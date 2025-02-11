
--
--  grbsrc Installation Script
--
--  Must be run as a SYSTEM User (DBA)
--
-- Command Line Parameters:
--   1 - INSTALL_SYSTEM_CONNECT: SYSTEM/password@TNSALIAS
--       i.e. pass the username and password for the SYSTEM user
--            and the TNSALIAS for the connection to the database.
--       The Data Load installation requires this connection information.
--

spool install_grbsrc.log

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
-- FUNCTION Install

@dbi.sql "ODBCAPTURE/ODBCAPTURE_VERSION.func" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- PACKAGE_SPEC Install

@dbi.sql "ODBCAPTURE/COMMON_UTIL.pkssql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/FH2.pkssql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/GRAB_DATA.pkssql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/GRAB_SCRIPTS.pkssql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ROOT_SCRIPTS.pkssql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ZIP_UTIL_PKG.pkssql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE Install

@dbi.sql "ODBCAPTURE/BUILD_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/BUILD_PATH.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/BUILD_TYPE_TIMING.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_DEPENDENCIES_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_OBJECTS_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_TAB_PRIVS_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DLOAD_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ELEMENT_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/METADATA_TRANSFORM_PARAMS.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJECT_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_COMMENTS_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_CONTEXT_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_DATA_LOAD_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_FKEY_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_INDEX_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_OBJECT_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_SYNONYM_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_TRIGGER_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ROLE_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/SCHEMA_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/SCHEMA_OBJECTS_TAB.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/TSPACE_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/USER_DEFINED_TYPE_CONF.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ZIP_FILES.tbl" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
prompt Compile All started
begin
   DBMS_UTILITY.compile_schema(schema      => 'ODBCAPTURE'
                              ,compile_all => FALSE);
end;
/
prompt Compile All is done.
----------------------------------------
-- VIEW Install

@dbi.sql "ODBCAPTURE/AQ_SYSTEM_PRIVS_VW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/BUILD_PATH_REVIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_DEPENDENCIES_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_OBJECTS_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_TAB_PRIVS_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_COMMENTS_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_CONTEXT_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_DATA_LOAD_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_FKEY_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_INDEX_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_OBJECT_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_SYNONYM_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_TRIGGER_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_OBJ_DIR_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_OBJ_HACL_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_OBJ_INSTALL_VW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_OBJ_QUEUE_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_OBJ_WACL_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_QUEUE_REGISTER_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_QUEUE_SUBSCRIBE_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_QUEUE_SYSPRIVS_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_ROLE_PRIVILEGES_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_SYSOBJ_PRIVILEGES_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/PRIV_SYSTEM_PRIVILEGES_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/UOR_INSTALL_VIEW.vw" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- DATA_LOAD Install

@dbi.sql "ODBCAPTURE/BUILD_CONF.cldr" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/BUILD_PATH.cldr" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ELEMENT_CONF.cldr" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/METADATA_TRANSFORM_PARAMS.cldr" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ROLE_CONF.cldr" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/SCHEMA_CONF.cldr" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE_INDEX Install

@dbi.sql "ODBCAPTURE/DBA_DEPENDENCIES_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_OBJECTS_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DBA_TAB_PRIVS_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_COMMENTS_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_CONTEXT_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_DATA_LOAD_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_FKEY_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_INDEX_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_OBJECT_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_SYNONYM_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJ_INSTALL_TRIGGER_TAB.tidx" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- PACKAGE_BODY Install

@dbi.sql "ODBCAPTURE/COMMON_UTIL.pkbsql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/FH2.pkbsql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/GRAB_DATA.pkbsql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/GRAB_SCRIPTS.pkbsql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ROOT_SCRIPTS.pkbsql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ZIP_UTIL_PKG.pkbsql" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE_FOREIGN_KEY Install

@dbi.sql "ODBCAPTURE/BUILD_PATH.tfk" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/DLOAD_CONF.tfk" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/OBJECT_CONF.tfk" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/ROLE_CONF.tfk" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/SCHEMA_CONF.tfk" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "ODBCAPTURE/TSPACE_CONF.tfk" "ODBCAPTURE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- Finalize Installation (Includes SPOOL OFF)
@dbi.sql "./installation_finalize.sql" "" "&INSTALL_SYSTEM_CONNECT."

spool off

