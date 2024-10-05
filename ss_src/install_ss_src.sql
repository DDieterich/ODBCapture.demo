
--
--  ss_src Installation Script
--
--  Must be run as a SYSTEM User (DBA)
--
-- Command Line Parameters:
--   1 - INSTALL_SYSTEM_CONNECT: SYSTEM/password@TNSALIAS
--       i.e. pass the username and password for the SYSTEM user
--            and the TNSALIAS for the connection to the database.
--       The Data Load installation requires this connection information.
--

spool install_ss_src.log

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
-- SEQUENCE Install

@dbi.sql "HR/DEPARTMENTS_SEQ.seq" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/EMPLOYEES_SEQ.seq" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/LOCATIONS_SEQ.seq" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS_SEQ.seq" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- XML_SCHEMA Install

@dbi.sql "OE/localhost_8080_source_schemas_poSource_xsd_purchaseOrder.xsd.pxsd" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TYPE_SPEC Install

@dbi.sql "OE/ACTIONS_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ACTION_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ACTION_V.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CATALOG_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CATEGORY_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/COMPOSITE_CATEGORY_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CORPORATE_CUSTOMER_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMER_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUST_ADDRESS_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORY_LIST_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORY_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/LEAF_CATEGORY_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/LINEITEMS_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/LINEITEM_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/LINEITEM_V.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEM_LIST_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEM_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_LIST_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PART_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PHONE_LIST_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_INFORMATION_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_REF_LIST_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PURCHASEORDER_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/REJECTION_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/SHIPPING_INSTRUCTIONS_T.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/SUBCATEGORY_REF_LIST_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/WAREHOUSE_TYP.tps" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/ADHEADER_TYP.tps" "PM" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/TEXTDOC_TAB.tps" "PM" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/TEXTDOC_TYP.tps" "PM" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- FUNCTION Install

@dbi.sql "OE/GET_PHONE_NUMBER_F.func" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- PROCEDURE Install

@dbi.sql "HR/ADD_JOB_HISTORY.proc" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/SECURE_DML.proc" "HR" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE Install

@dbi.sql "HR/COUNTRIES.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/DEPARTMENTS.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/EMPLOYEES.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOBS.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOB_HISTORY.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/LOCATIONS.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/REGIONS.tbl" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CATEGORIES_TAB.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMERS.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORIES.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEMS.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_DESCRIPTIONS.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_INFORMATION.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PROMOTIONS.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PURCHASEORDER.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/WAREHOUSES.tbl" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/PRINT_MEDIA.tbl" "PM" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- DATA_LOAD Install

@dbi.sql "HR/COUNTRIES.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/DEPARTMENTS.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/EMPLOYEES.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOBS.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOB_HISTORY.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/LOCATIONS.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/REGIONS.cldr" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMERS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORIES.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEMS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_DESCRIPTIONS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_INFORMATION.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PROMOTIONS.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/WAREHOUSES.cldr" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/PRINT_MEDIA.cldr" "PM" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE_INDEX Install

@dbi.sql "HR/DEPARTMENTS.tidx" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/EMPLOYEES.tidx" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOB_HISTORY.tidx" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/LOCATIONS.tidx" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMERS.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORIES.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEMS.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_DESCRIPTIONS.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_INFORMATION.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/WAREHOUSES.tidx" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- VIEW Install

@dbi.sql "HR/EMP_DETAILS_VIEW.vw" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ACCOUNT_MANAGERS.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/BOMBAY_INVENTORY.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMERS_VIEW.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/OC_CORPORATE_CUSTOMERS.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/OC_CUSTOMERS.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/OC_INVENTORIES.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/OC_ORDERS.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/OC_PRODUCT_INFORMATION.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS_VIEW.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCTS.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_PRICES.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/SYDNEY_INVENTORY.vw" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/TORONTO_INVENTORY.vw" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TYPE_BODY Install

@dbi.sql "OE/CATALOG_TYP.tpb" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/COMPOSITE_CATEGORY_TYP.tpb" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/LEAF_CATEGORY_TYP.tpb" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE_FOREIGN_KEY Install

@dbi.sql "HR/COUNTRIES.tfk" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/DEPARTMENTS.tfk" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/EMPLOYEES.tfk" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/JOB_HISTORY.tfk" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "HR/LOCATIONS.tfk" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/CUSTOMERS.tfk" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/INVENTORIES.tfk" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDERS.tfk" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEMS.tfk" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PRODUCT_DESCRIPTIONS.tfk" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/WAREHOUSES.tfk" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "PM/PRINT_MEDIA.tfk" "PM" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- TABLE_TRIGGER Install

@dbi.sql "HR/EMPLOYEES.ttrg" "HR" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/ORDER_ITEMS.ttrg" "OE" "&INSTALL_SYSTEM_CONNECT."
@dbi.sql "OE/PURCHASEORDER.ttrg" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- VIEW_TRIGGER Install

@dbi.sql "OE/OC_ORDERS.vtrg" "OE" "&INSTALL_SYSTEM_CONNECT."

----------------------------------------
-- Finalize Installation (Includes SPOOL OFF)
@dbi.sql "./installation_finalize.sql" "" "&INSTALL_SYSTEM_CONNECT."

spool off

