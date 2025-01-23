
--
--  Create OE.CATALOG_TYP Type
--

set define off


--DBMS_METADATA:OE.CATALOG_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."CATALOG_TYP" 

 UNDER composite_category_typ
      (
    MEMBER FUNCTION getCatalogName RETURN VARCHAR2
       , OVERRIDING MEMBER FUNCTION category_describe RETURN VARCHAR2
      );
/


--  Grants


--  Synonyms


set define on
