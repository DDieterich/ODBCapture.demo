OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "HR"."LOCATIONS"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (LOCATION_ID                    FLOAT EXTERNAL
   ,STREET_ADDRESS                 CHAR(40)
   ,POSTAL_CODE                    CHAR(12)
   ,CITY                           CHAR(30)
   ,STATE_PROVINCE                 CHAR(25)
   ,COUNTRY_ID                     CHAR(2)
   )
