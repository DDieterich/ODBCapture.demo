OPTIONS (SKIP=1)
LOAD DATA
INTO TABLE "OE"."ORDER_ITEMS"
APPEND
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ORDER_ID                       FLOAT EXTERNAL
   ,LINE_ITEM_ID                   FLOAT EXTERNAL
   ,PRODUCT_ID                     FLOAT EXTERNAL
   ,UNIT_PRICE                     FLOAT EXTERNAL
   ,QUANTITY                       FLOAT EXTERNAL
   )
