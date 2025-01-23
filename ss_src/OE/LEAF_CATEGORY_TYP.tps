
--
--  Create OE.LEAF_CATEGORY_TYP Type
--

set define off


--DBMS_METADATA:OE.LEAF_CATEGORY_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."LEAF_CATEGORY_TYP" 

 UNDER category_typ
    (
    product_ref_list    product_ref_list_typ
    , OVERRIDING MEMBER FUNCTION  category_describe RETURN VARCHAR2
    );
/


--  Grants


--  Synonyms


set define on
