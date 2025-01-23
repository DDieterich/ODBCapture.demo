
--
--  Create OE.ORDER_TYP Type
--

set define off


--DBMS_METADATA:OE.ORDER_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."ORDER_TYP" 

 AS OBJECT
    ( order_id           NUMBER(12)
    , order_mode         VARCHAR2(8)
    , customer_ref  REF  customer_typ
    , order_status       NUMBER(2)
    , order_total        NUMBER(8,2)
    , sales_rep_id       NUMBER(6)
    , order_item_list    order_item_list_typ
    ) ;
/


--  Grants


--  Synonyms


set define on
