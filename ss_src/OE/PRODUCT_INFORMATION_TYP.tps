
--
--  Create OE.PRODUCT_INFORMATION_TYP Type
--

set define off


--DBMS_METADATA:OE.PRODUCT_INFORMATION_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."PRODUCT_INFORMATION_TYP" 
                                       
 AS OBJECT
    ( product_id           NUMBER(6)
    , product_name         VARCHAR2(50)
    , product_description  VARCHAR2(2000)
    , category_id          NUMBER(2)
    , weight_class         NUMBER(1)
    , warranty_period      INTERVAL YEAR(2) TO MONTH
    , supplier_id          NUMBER(6)
    , product_status       VARCHAR2(20)
    , list_price           NUMBER(8,2)
    , min_price            NUMBER(8,2)
    , catalog_url          VARCHAR2(50)
    , inventory_list       inventory_list_typ
    ) ;
/


--  Grants


--  Synonyms


set define on
