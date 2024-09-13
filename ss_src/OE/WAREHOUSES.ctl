OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "OE"."WAREHOUSES"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (WAREHOUSE_ID                   FLOAT EXTERNAL
   ,WAREHOUSE_SPEC                 CHAR(1048576)
   ,WAREHOUSE_NAME                 CHAR(35)
   ,LOCATION_ID                    FLOAT EXTERNAL
   ,WH_GEO_LOCATION                COLUMN OBJECT TREAT AS SDO_GEOMETRY
      (SDO_GTYPE     FLOAT EXTERNAL TERMINATED BY ';'
      ,SDO_SRID      FLOAT EXTERNAL TERMINATED BY ';'
      ,SDO_POINT     COLUMN OBJECT TREAT AS SDO_POINT_TYPE
         (X   FLOAT EXTERNAL TERMINATED BY ';'
         ,Y   FLOAT EXTERNAL TERMINATED BY ';'
         ,Z   FLOAT EXTERNAL TERMINATED BY ';'
         )
      ,SDO_ELEM_INFO VARRAY TERMINATED BY '' (SDO_ELEM_INFO_ARRAY  FLOAT EXTERNAL TERMINATED BY ';')
      ,SDO_ORDINATES VARRAY TERMINATED BY '' (SDO_ORDINATE_ARRAY  FLOAT EXTERNAL TERMINATED BY ';')
      )
   )
