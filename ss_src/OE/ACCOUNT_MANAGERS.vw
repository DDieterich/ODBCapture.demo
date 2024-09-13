
--
--  Create OE.ACCOUNT_MANAGERS view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."ACCOUNT_MANAGERS"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.ACCOUNT_MANAGERS

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."ACCOUNT_MANAGERS" ("ACCT_MGR", "REGION", "COUNTRY", "PROVINCE", "NUM_CUSTOMERS") AS 
  SELECT		c.account_mgr_id 		ACCT_MGR,
		cr.region_id 			REGION,
		c.cust_address.country_id 	COUNTRY,
		c.cust_address.state_province 	PROVINCE,
		count(*) 			NUM_CUSTOMERS
FROM		customers c, countries cr
WHERE		c.cust_address.country_id = cr.country_id
GROUP BY ROLLUP (c.account_mgr_id,
		 cr.region_id,
		 c.cust_address.country_id,
		 c.cust_address.state_province);

--  Comments

--DBMS_METADATA:OE.ACCOUNT_MANAGERS


--  Grants


--  Synonyms


set define on
