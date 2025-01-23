
--
--  Create OE.WAREHOUSE_TYP Type
--

set define off


--DBMS_METADATA:OE.WAREHOUSE_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."WAREHOUSE_TYP" 

 AS OBJECT
    ( warehouse_id       NUMBER(3)
    , warehouse_name     VARCHAR2(35)
    , location_id        NUMBER(4)
    ) ;
/


--  Grants


--  Synonyms


set define on
