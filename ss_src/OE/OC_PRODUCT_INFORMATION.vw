
--
--  Create OE.OC_PRODUCT_INFORMATION view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."OC_PRODUCT_INFORMATION"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.OC_PRODUCT_INFORMATION

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."OC_PRODUCT_INFORMATION" OF "OE"."PRODUCT_INFORMATION_TYP"
  WITH OBJECT IDENTIFIER (product_id) AS 
  SELECT p.product_id, p.product_name, p.product_description, p.category_id,
           p.weight_class, p.warranty_period, p.supplier_id, p.product_status,
           p.list_price, p.min_price, p.catalog_url,
           CAST(MULTISET(SELECT i.product_id,i.warehouse,i.quantity_on_hand
                         FROM oc_inventories i
                         WHERE p.product_id=i.product_id)
                AS inventory_list_typ)
    FROM product_information p;

--  Comments

--DBMS_METADATA:OE.OC_PRODUCT_INFORMATION


--  Grants


--  Synonyms


set define on
