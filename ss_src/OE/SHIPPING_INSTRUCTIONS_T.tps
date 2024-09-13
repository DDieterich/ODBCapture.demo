
--
--  Create OE.SHIPPING_INSTRUCTIONS_T Type
--

set define off


--DBMS_METADATA:OE.SHIPPING_INSTRUCTIONS_T

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."SHIPPING_INSTRUCTIONS_T" AS OBJECT ("SYS_XDBPD$" "XDB"."XDB$RAW_LIST_T","SHIP_TO_NAME" VARCHAR2(20 CHAR),"SHIP_TO_ADDRESS" VARCHAR2(256 CHAR),"SHIP_TO_PHONE" VARCHAR2(24 CHAR))NOT FINAL INSTANTIABLE 
/


--  Grants


--  Synonyms


set define on
