
--
--  Create OE.BOMBAY_INVENTORY view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."BOMBAY_INVENTORY"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.BOMBAY_INVENTORY

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."BOMBAY_INVENTORY" ("PRODUCT_ID", "PRODUCT_NAME", "QUANTITY_ON_HAND") AS 
  SELECT p.product_id
,      p.product_name
,      i.quantity_on_hand
FROM   inventories i
,      warehouses  w
,      products    p
WHERE  p.product_id = i.product_id
AND    i.warehouse_id = w.warehouse_id
AND    w.warehouse_name = 'Bombay';

--  Comments

--DBMS_METADATA:OE.BOMBAY_INVENTORY

   COMMENT ON TABLE "OE"."BOMBAY_INVENTORY"  IS 'This view shows inventories at the Bombay warehouse.';


--  Grants


--  Synonyms


set define on
