
--
--  Create OE.INVENTORY_TYP Type
--

set define off


--DBMS_METADATA:OE.INVENTORY_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."INVENTORY_TYP" 
                                       
 AS OBJECT
    ( product_id          NUMBER(6)
    , warehouse           warehouse_typ
    , quantity_on_hand    NUMBER(8)
    ) ;
/


--  Grants


--  Synonyms


set define on
