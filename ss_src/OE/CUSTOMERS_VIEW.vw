
--
--  Create OE.CUSTOMERS_VIEW view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."CUSTOMERS_VIEW"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.CUSTOMERS_VIEW

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."CUSTOMERS_VIEW" ("CUSTOMER_ID", "CUST_FIRST_NAME", "CUST_LAST_NAME", "STREET_ADDRESS", "POSTAL_CODE", "CITY", "STATE_PROVINCE", "COUNTRY_ID", "COUNTRY_NAME", "REGION_ID", "NLS_LANGUAGE", "NLS_TERRITORY", "CREDIT_LIMIT", "CUST_EMAIL", "PRIMARY_PHONE_NUMBER", "PHONE_NUMBER_2", "PHONE_NUMBER_3", "PHONE_NUMBER_4", "PHONE_NUMBER_5", "ACCOUNT_MGR_ID", "LOCATION_GTYPE", "LOCATION_SRID", "LOCATION_X", "LOCATION_Y", "LOCATION_Z") AS 
  SELECT
  c.customer_id,
  c.cust_first_name,
  c.cust_last_name,
  c.cust_address.street_address street_address,
  c.cust_address.postal_code postal_code,
  c.cust_address.city city,
  c.cust_address.state_province state_province,
  co.country_id,
  co.country_name,
  co.region_id,
  c.nls_language,
  c.nls_territory,
  c.credit_limit,
  c.cust_email,
  substr(get_phone_number_f(1,phone_numbers),1,25) Primary_Phone_number,
  substr(get_phone_number_f(2,phone_numbers),1,25) Phone_number_2,
  substr(get_phone_number_f(3,phone_numbers),1,25) Phone_number_3,
  substr(get_phone_number_f(4,phone_numbers),1,25) Phone_number_4,
  substr(get_phone_number_f(5,phone_numbers),1,25) Phone_number_5,
  c.account_mgr_id,
  c.cust_geo_location.sdo_gtype location_gtype,
  c.cust_geo_location.sdo_srid location_srid,
  c.cust_geo_location.sdo_point.x location_x,
  c.cust_geo_location.sdo_point.y location_y,
  c.cust_geo_location.sdo_point.z location_z
FROM
  countries co,
  customers c
WHERE
  c.cust_address.country_id = co.country_id(+)
;

--  Comments

--DBMS_METADATA:OE.CUSTOMERS_VIEW


--  Grants


--  Synonyms


set define on
