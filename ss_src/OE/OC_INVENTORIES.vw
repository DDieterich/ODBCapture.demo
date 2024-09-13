
--
--  Create OE.OC_INVENTORIES view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."OC_INVENTORIES"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.OC_INVENTORIES

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."OC_INVENTORIES" OF "OE"."INVENTORY_TYP"
  WITH OBJECT IDENTIFIER (product_id) AS 
  SELECT i.product_id,
           warehouse_typ(w.warehouse_id, w.warehouse_name, w.location_id),
           i.quantity_on_hand
    FROM inventories i, warehouses w
    WHERE i.warehouse_id=w.warehouse_id;

--  Comments

--DBMS_METADATA:OE.OC_INVENTORIES


--  Grants


--  Synonyms


set define on
