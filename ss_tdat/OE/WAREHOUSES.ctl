OPTIONS (SKIP=1, READSIZE=2097312)
LOAD DATA
INTO TABLE "OE"."WAREHOUSES"
APPEND
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (WAREHOUSE_ID                   FLOAT EXTERNAL
   ,WAREHOUSE_SPEC                 CHAR(1048576)
   ,WAREHOUSE_NAME                 CHAR(35)
   ,LOCATION_ID                    FLOAT EXTERNAL
   ,WH_GEO_LOCATION                COLUMN OBJECT TREAT AS MDSYS.SDO_GEOMETRY
      (SDO_GTYPE     FLOAT EXTERNAL TERMINATED BY ''
      ,SDO_SRID      FLOAT EXTERNAL TERMINATED BY ''
      ,SDO_POINT     COLUMN OBJECT TREAT AS MDSYS.SDO_POINT_TYPE
         (X   FLOAT EXTERNAL TERMINATED BY ''
         ,Y   FLOAT EXTERNAL TERMINATED BY ''
         ,Z   FLOAT EXTERNAL TERMINATED BY ''
         )
      ,SDO_ELEM_INFO VARRAY TERMINATED BY ''
         (SDO_ELEM_INFO  FLOAT EXTERNAL TERMINATED BY '')
      ,SDO_ORDINATES VARRAY TERMINATED BY ''
         (SDO_ORDINATES  FLOAT EXTERNAL TERMINATED BY '')
      )
   )
