OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "HR"."JOB_HISTORY"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (EMPLOYEE_ID                    FLOAT EXTERNAL
   ,START_DATE                     DATE 'DD-MON-YYYY HH24:MI:SS'
   ,END_DATE                       DATE 'DD-MON-YYYY HH24:MI:SS'
   ,JOB_ID                         CHAR(10)
   ,DEPARTMENT_ID                  FLOAT EXTERNAL
   )
