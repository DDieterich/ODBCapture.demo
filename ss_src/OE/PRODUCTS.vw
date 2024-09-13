
--
--  Create OE.PRODUCTS view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."PRODUCTS"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.PRODUCTS

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."PRODUCTS" ("PRODUCT_ID", "LANGUAGE_ID", "PRODUCT_NAME", "CATEGORY_ID", "PRODUCT_DESCRIPTION", "WEIGHT_CLASS", "WARRANTY_PERIOD", "SUPPLIER_ID", "PRODUCT_STATUS", "LIST_PRICE", "MIN_PRICE", "CATALOG_URL") AS 
  SELECT i.product_id
,      d.language_id
,      CASE WHEN d.language_id IS NOT NULL
            THEN d.translated_name
            ELSE TRANSLATE(i.product_name USING NCHAR_CS)
       END    AS product_name
,      i.category_id
,      CASE WHEN d.language_id IS NOT NULL
            THEN d.translated_description
            ELSE TRANSLATE(i.product_description USING NCHAR_CS)
       END    AS product_description
,      i.weight_class
,      i.warranty_period
,      i.supplier_id
,      i.product_status
,      i.list_price
,      i.min_price
,      i.catalog_url
FROM   product_information  i
,      product_descriptions d
WHERE  d.product_id  (+) = i.product_id
AND    d.language_id (+) = sys_context('USERENV','LANG');

--  Comments

--DBMS_METADATA:OE.PRODUCTS

   COMMENT ON TABLE "OE"."PRODUCTS"  IS 'This view joins product_information and product_descriptions, using NLS
settings to pick the appropriate language-specific product description.';


--  Grants


--  Synonyms


set define on
