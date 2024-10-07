OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "PM"."PRINT_MEDIA"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (PRODUCT_ID                     FLOAT EXTERNAL
   ,AD_ID                          FLOAT EXTERNAL
      -- BLOB data must be decoded from Base64 after loading
   ,AD_COMPOSITE                   CHAR(1572864)
   ,AD_SOURCETEXT                  CHAR(1048576)
   ,AD_FINALTEXT                   CHAR(1048576)
   ,AD_FLTEXTN                     CHAR(5242880)
   ,AD_TEXTDOCS_NTAB               NESTED TABLE TERMINATED BY ''
      (AD_TEXTDOCS_NTAB COLUMN OBJECT TREAT AS PM.TESTDOC_TYP
         (DOCUMENT_TYPE   CHAR(32)      TERMINATED BY ''
         ,FORMATTED_DOC   CHAR(1572864) TERMINATED BY ''
         ))
      -- BLOB data must be decoded from Base64 after loading
   ,AD_PHOTO                       CHAR(1572864)
   ,AD_GRAPHIC_dname               FILLER char(512)
   ,AD_GRAPHIC_fname               FILLER char(512)
   ,AD_GRAPHIC                     BFILE(AD_GRAPHIC_dname, AD_GRAPHIC_fname)
   ,AD_HEADER                      COLUMN OBJECT TREAT AS PM.ADHEADER_TYP
      (HEADER_NAME     CHAR(256) TERMINATED BY ''
      ,CREATION_DATE   DATE 'DD-MON-YYYY HH24:MI:SS' TERMINATED BY ''
      ,HEADER_TEXT     CHAR(1024) TERMINATED BY ''
      ,LOGO            CHAR(1572864) TERMINATED BY ''
      )
   )
