OPTIONS (SKIP=1)
LOAD DATA
INTO TABLE "HR"."REGIONS"
APPEND
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (REGION_ID                      FLOAT EXTERNAL
   ,REGION_NAME                    CHAR(25)
   )
