
--
--  Create OE.LINEITEMS_T Type
--

set define off


--DBMS_METADATA:OE.LINEITEMS_T

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."LINEITEMS_T" AS OBJECT ("SYS_XDBPD$" "XDB"."XDB$RAW_LIST_T","LINEITEM" "LINEITEM_V")NOT FINAL INSTANTIABLE 
/


--  Grants


--  Synonyms


set define on
