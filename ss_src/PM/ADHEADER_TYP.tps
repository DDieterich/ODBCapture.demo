
--
--  Create PM.ADHEADER_TYP Type
--

set define off


--DBMS_METADATA:PM.ADHEADER_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "PM"."ADHEADER_TYP" 
                                        
  AS OBJECT
    ( header_name        VARCHAR2(256)
    , creation_date      DATE
    , header_text        VARCHAR2(1024)
    , logo               BLOB
    );
/


--  Grants


--  Synonyms


set define on
