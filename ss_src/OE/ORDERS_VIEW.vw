
--
--  Create OE.ORDERS_VIEW view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."ORDERS_VIEW"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.ORDERS_VIEW

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."ORDERS_VIEW" ("ORDER_ID", "ORDER_DATE", "ORDER_MODE", "CUSTOMER_ID", "ORDER_STATUS", "ORDER_TOTAL", "SALES_REP_ID", "PROMOTION_ID") AS 
  select order_id,
  to_date(to_char(order_date,'DD-MON-YY HH:MI:SS'),'DD-MON-YY HH:MI:SS')    order_date,
order_mode,
customer_id,
order_status,
order_total,
sales_rep_id,
promotion_id
from orders;

--  Comments

--DBMS_METADATA:OE.ORDERS_VIEW


--  Grants


--  Synonyms


set define on
