OPTIONS (SKIP=1)
LOAD DATA
INTO TABLE "OE"."PROMOTIONS"
APPEND
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (PROMO_ID                       FLOAT EXTERNAL
   ,PROMO_NAME                     CHAR(20)
   )
