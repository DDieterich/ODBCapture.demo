
--
--  Create OE.CORPORATE_CUSTOMER_TYP Type
--

set define off


--DBMS_METADATA:OE.CORPORATE_CUSTOMER_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."CORPORATE_CUSTOMER_TYP" 

 UNDER customer_typ
      ( account_mgr_id     NUMBER(6)
      );
/


--  Grants


--  Synonyms


set define on
