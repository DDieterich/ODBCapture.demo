OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "HR"."EMPLOYEES"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (EMPLOYEE_ID                    FLOAT EXTERNAL
   ,FIRST_NAME                     CHAR(20)
   ,LAST_NAME                      CHAR(25)
   ,EMAIL                          CHAR(25)
   ,PHONE_NUMBER                   CHAR(20)
   ,HIRE_DATE                      DATE 'DD-MON-YYYY HH24:MI:SS'
   ,JOB_ID                         CHAR(10)
   ,SALARY                         FLOAT EXTERNAL
   ,COMMISSION_PCT                 FLOAT EXTERNAL
   ,MANAGER_ID                     FLOAT EXTERNAL
   ,DEPARTMENT_ID                  FLOAT EXTERNAL
   )
