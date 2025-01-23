
--
--  Create OE.SUBCATEGORY_REF_LIST_TYP Type
--

set define off


--DBMS_METADATA:OE.SUBCATEGORY_REF_LIST_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."SUBCATEGORY_REF_LIST_TYP" 

 AS TABLE OF REF category_typ;
/


--  Grants


--  Synonyms


set define on
