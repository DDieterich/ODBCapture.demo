
--
--  Create PM.TEXTDOC_TYP Type
--

set define off


--DBMS_METADATA:PM.TEXTDOC_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "PM"."TEXTDOC_TYP" 

  AS OBJECT
    ( document_typ      VARCHAR2(32)
    , formatted_doc     BLOB
    ) ;
/


--  Grants


--  Synonyms


set define on
