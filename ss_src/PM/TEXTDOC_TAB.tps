
--
--  Create PM.TEXTDOC_TAB Type
--

set define off


--DBMS_METADATA:PM.TEXTDOC_TAB

  CREATE OR REPLACE EDITIONABLE TYPE "PM"."TEXTDOC_TAB" 
                                        
  AS TABLE OF textdoc_typ;
/


--  Grants
grant EXECUTE on "PM"."TEXTDOC_TAB" to "ODBCAPTURE";


--  Synonyms


set define on
