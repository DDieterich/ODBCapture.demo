
--
--  Create OE.OC_CUSTOMERS view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."OC_CUSTOMERS"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.OC_CUSTOMERS

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."OC_CUSTOMERS" OF "OE"."CUSTOMER_TYP"
  WITH OBJECT IDENTIFIER (customer_id) AS 
  SELECT c.customer_id, c.cust_first_name, c.cust_last_name, c.cust_address,
           c.phone_numbers,c.nls_language,c.nls_territory,c.credit_limit,
           c.cust_email,
           CAST(MULTISET(SELECT o.order_id, o.order_mode,
                               MAKE_REF(oc_customers,o.customer_id),
                               o.order_status,
                               o.order_total,o.sales_rep_id,
                               CAST(MULTISET(SELECT l.order_id,l.line_item_id,
                                                    l.unit_price,l.quantity,
                                             MAKE_REF(oc_product_information,
                                                      l.product_id)
                                             FROM order_items l
                                             WHERE o.order_id = l.order_id)
                                    AS order_item_list_typ)
                         FROM orders o
                         WHERE c.customer_id = o.customer_id)
                AS order_list_typ)
     FROM customers c;

--  Comments

--DBMS_METADATA:OE.OC_CUSTOMERS


--  Grants


--  Synonyms


set define on
