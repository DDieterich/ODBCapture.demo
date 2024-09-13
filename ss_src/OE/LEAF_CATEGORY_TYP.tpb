
--
--  Create OE.LEAF_CATEGORY_TYP Type Body
--

set define off


--DBMS_METADATA:OE.LEAF_CATEGORY_TYP

  CREATE OR REPLACE EDITIONABLE TYPE BODY "OE"."LEAF_CATEGORY_TYP" AS
    OVERRIDING MEMBER FUNCTION  category_describe RETURN VARCHAR2 IS
    BEGIN
       RETURN  'leaf_category_typ';
    END;
   END;
/

set define on
