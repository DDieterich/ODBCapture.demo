
--
--  Create OE.COMPOSITE_CATEGORY_TYP Type
--

set define off


--DBMS_METADATA:OE.COMPOSITE_CATEGORY_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."COMPOSITE_CATEGORY_TYP" 
                                       
 UNDER category_typ
      (
    subcategory_ref_list subcategory_ref_list_typ
      , OVERRIDING MEMBER FUNCTION  category_describe RETURN VARCHAR2
      )
  NOT FINAL;
/


--  Grants


--  Synonyms


set define on
