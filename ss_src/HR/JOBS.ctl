OPTIONS (SKIP=1)
LOAD DATA
INTO TABLE "HR"."JOBS"
APPEND
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (JOB_ID                         CHAR(10)
   ,JOB_TITLE                      CHAR(35)
   ,MIN_SALARY                     FLOAT EXTERNAL
   ,MAX_SALARY                     FLOAT EXTERNAL
   )
