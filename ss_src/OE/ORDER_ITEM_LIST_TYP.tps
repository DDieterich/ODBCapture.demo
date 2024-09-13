
--
--  Create OE.ORDER_ITEM_LIST_TYP Type
--

set define off


--DBMS_METADATA:OE.ORDER_ITEM_LIST_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."ORDER_ITEM_LIST_TYP" 
                                       
 AS TABLE OF order_item_typ;
/


--  Grants


--  Synonyms


set define on
