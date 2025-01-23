
--
--  Create OE.ORDER_ITEM_TYP Type
--

set define off


--DBMS_METADATA:OE.ORDER_ITEM_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."ORDER_ITEM_TYP" 

 AS OBJECT
    ( order_id           NUMBER(12)
    , line_item_id       NUMBER(3)
    , unit_price         NUMBER(8,2)
    , quantity           NUMBER(8)
    , product_ref  REF   product_information_typ
    ) ;
/


--  Grants


--  Synonyms


set define on
