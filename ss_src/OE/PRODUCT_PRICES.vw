
--
--  Create OE.PRODUCT_PRICES view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."PRODUCT_PRICES"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.PRODUCT_PRICES

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."PRODUCT_PRICES" ("CATEGORY_ID", "#_OF_PRODUCTS", "LOW_PRICE", "HIGH_PRICE") AS 
  SELECT category_id
,      COUNT(*)        as "#_OF_PRODUCTS"
,      MIN(list_price) as low_price
,      MAX(list_price) as high_price
FROM   product_information
GROUP BY category_id;

--  Comments

--DBMS_METADATA:OE.PRODUCT_PRICES


--  Grants


--  Synonyms


set define on
