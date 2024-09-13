
--
--  Create OE.OC_ORDERS view
--

set define off


--
--  Cannot grant permisions on a view with an error
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "OE"."OC_ORDERS"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:OE.OC_ORDERS

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OE"."OC_ORDERS" OF "OE"."ORDER_TYP"
  WITH OBJECT IDENTIFIER (order_id) AS 
  SELECT o.order_id, o.order_mode,MAKE_REF(oc_customers,o.customer_id),
        o.order_status,o.order_total,o.sales_rep_id,
       CAST(MULTISET(SELECT l.order_id,l.line_item_id,l.unit_price,l.quantity,
                       make_ref(oc_product_information,l.product_id)
                     FROM order_items l
                     WHERE o.order_id = l.order_id)
            AS order_item_list_typ)
    FROM orders o;

--  Comments

--DBMS_METADATA:OE.OC_ORDERS


--  Grants


--  Synonyms


set define on
