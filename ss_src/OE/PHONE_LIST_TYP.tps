
--
--  Create OE.PHONE_LIST_TYP Type
--

set define off


--DBMS_METADATA:OE.PHONE_LIST_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."PHONE_LIST_TYP" 
                                        
  AS VARRAY(5) OF VARCHAR2(25);
/


--  Grants


--  Synonyms


set define on
