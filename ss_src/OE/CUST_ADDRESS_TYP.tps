
--
--  Create OE.CUST_ADDRESS_TYP Type
--

set define off


--DBMS_METADATA:OE.CUST_ADDRESS_TYP

  CREATE OR REPLACE EDITIONABLE TYPE "OE"."CUST_ADDRESS_TYP" 

  AS OBJECT
    ( street_address     VARCHAR2(40)
    , postal_code        VARCHAR2(10)
    , city               VARCHAR2(30)
    , state_province     VARCHAR2(10)
    , country_id         CHAR(2)
    );
/


--  Grants


--  Synonyms


set define on
