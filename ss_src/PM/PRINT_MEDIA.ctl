OPTIONS (SKIP=2)
LOAD DATA
CONTINUEIF LAST = ''   -- CHR(25)

INTO TABLE "PM"."PRINT_MEDIA"
APPEND WHEN TABLE_TYP = 'P'
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (TABLE_TYP FILLER POSITION(1) CHAR(1)
   ,PRODUCT_ID                     FLOAT EXTERNAL
   ,AD_ID                          FLOAT EXTERNAL
      -- BLOB data must be decoded from Base64 after loading
   ,AD_COMPOSITE                   CHAR(1572864)
   ,AD_SOURCETEXT                  CHAR(1048576)
   ,AD_FINALTEXT                   CHAR(1048576)
      -- NCLOB data must be decoded with UNISTR after loading
   ,AD_FLTEXTN                     CHAR(5242880)
   ,AD_TEXTDOCS_NTAB               SID (AD_TEXTDOCS_NTAB_SID)
   ,AD_TEXTDOCS_NTAB_SID FILLER CHAR(32)
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

INTO TABLE "PM"."TEXTDOCS_NESTEDTAB"
APPEND WHEN TABLE_TYP = 'T'
SID (TEXTDOC_SID)
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (TABLE_TYP FILLER POSITION(1) CHAR(1)
   ,TEXTDOC_SID FILLER CHAR(32)
   ,DOCUMENT_TYP                   CHAR(32)
   ,FORMATTED_DOC                  CHAR(1572864)
   )
