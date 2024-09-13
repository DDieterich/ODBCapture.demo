
--
--  Create OE.CATALOG_TYP Type Body
--

set define off


--DBMS_METADATA:OE.CATALOG_TYP

  CREATE OR REPLACE EDITIONABLE TYPE BODY "OE"."CATALOG_TYP" AS
  OVERRIDING MEMBER FUNCTION category_describe RETURN varchar2 IS
  BEGIN
    RETURN 'catalog_typ';
  END;
  MEMBER FUNCTION getCatalogName RETURN varchar2 IS
  BEGIN
    -- Return the category name from the supertype
    RETURN self.category_name;
  END;
END;
/

set define on
