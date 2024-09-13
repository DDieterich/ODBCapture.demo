
### Setup

* Create PDB
* Load ODBCapture in PDB
* Clone `https://github.com/oracle-samples/db-sample-schemas.git`


### Human Resources Installation

* cd db-sample-schemas/human_resources
* Password for HR: HR

```
$ sqlplus 'system/PASSWORD@OnPrem_EE213_DEVPDB' @hr_install.sql

SQL*Plus: Release 19.0.0.0.0 - Production on Mon Sep 9 16:50:06 2024
Version 19.22.0.0.0

Copyright (c) 1982, 2023, Oracle.  All rights reserved.

Last Successful login time: Mon Sep 09 2024 16:48:48 -05:00

Connected to:
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0


Thank you for installing the Oracle Human Resources Sample Schema.
This installation script will automatically exit your database session
at the end of the installation or if any error is encountered.
The entire installation will be logged into the 'hr_install.log' log file.

Enter a password for the user HR: 


Enter a tablespace for HR [USERS]:
Do you want to overwrite the schema, if it already exists? [YES|no]: no
******  Creating REGIONS table ....

Table created.


Index created.


Table altered.

******  Creating COUNTRIES table ....

Table created.


Table altered.

******  Creating LOCATIONS table ....

Table created.


Index created.


Table altered.


Sequence created.

******  Creating DEPARTMENTS table ....

Table created.


Index created.


Table altered.


Sequence created.

******  Creating JOBS table ....

Table created.


Index created.


Table altered.

******  Creating EMPLOYEES table ....

Table created.


Index created.


Table altered.


Table altered.


Sequence created.

******  Creating JOB_HISTORY table ....

Table created.


Index created.


Table altered.

******  Creating EMP_DETAILS_VIEW view ...

View created.

******  Creating indexes ...

Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.

******  Adding table column comments ...

Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Session altered.

****** Populating REGIONS table ....

PL/SQL procedure successfully completed.

****** Populating COUNTRIES table ....

PL/SQL procedure successfully completed.

****** Populating LOCATIONS table ....

PL/SQL procedure successfully completed.

****** Populating DEPARTMENTS table ....

Table altered.


PL/SQL procedure successfully completed.

****** Populating JOBS table ....

PL/SQL procedure successfully completed.

****** Populating EMPLOYEES table ....

PL/SQL procedure successfully completed.

****** Populating JOB_HISTORY table ....

PL/SQL procedure successfully completed.


Commit complete.


Table altered.


Procedure created.


Trigger created.


Trigger altered.


Procedure created.


Trigger created.


Commit complete.


Installation
-------------
Verification:

Table         provided     actual
----------- ---------- ----------
regions              5          5
countries           25         25
departments         27         27
locations           23         23
employees          107        107
jobs                19         19
job_history         10         10

Thank you!
--------------------------------------------------------
The installation of the sample schema is now finished.
Please check the installation verification output above.

You will now be disconnected from the database.

Thank you for using Oracle Database!

Disconnected from Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0
```

### Order Entry Installation

* cd db-sample-schemas/order_entry
* Password for HR: HR
* Perl is run in Git Bash
* SQL*Plus is run inside Docker Container

```
$ perl -p -i.bak -e 's#__SUB__CWD__#/opt/DMSTEX_dev/db-sample-schemas#g' *.sql
$ sqlplus 'system/PASSWORD@//localhost:1521/devpdb' @oe_main.sql OE USERS TEMP HR 'PASSWORD' /opt/DMSTEX_dev/db-sample-schemas/ logs/ v3 //localhost:1521/devpdb

SQL*Plus: Release 21.0.0.0.0 - Production on Tue Sep 10 09:32:39 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Last Successful login time: Tue Sep 10 2024 09:30:33 +00:00

Connected to:
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0


specify password for OE as parameter 1:

specify default tablespeace for OE as parameter 2:

specify temporary tablespace for OE as parameter 3:

specify password for HR as parameter 4:

specify password for SYS as parameter 5:

specify directory path for the data files as parameter 6:

writeable directory path for the log files as parameter 7:

specify version as parameter 8:

specify connect string as parameter 9:


User dropped.

old   1: CREATE USER oe IDENTIFIED BY &pass
new   1: CREATE USER oe IDENTIFIED BY OE

User created.

old   1: ALTER USER oe DEFAULT TABLESPACE &tbs QUOTA UNLIMITED ON &tbs
new   1: ALTER USER oe DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS

User altered.

old   1: ALTER USER oe TEMPORARY TABLESPACE &ttbs
new   1: ALTER USER oe TEMPORARY TABLESPACE TEMP

User altered.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.

Connected.

Grant succeeded.

Connected.

Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.

Connected.

Session altered.


Session altered.


specify Sample Schema version as parameter 1:

specify password for OE as parameter 2:

PROMPT password for SYS as parameter 3:

specify connect string as parameter 4:


Type created.


Type created.


Table created.


Index created.


Table altered.


Table created.


Index created.


Table altered.


Table created.


Index created.


Index created.


Table altered.


Trigger created.


Table created.


Index created.


Table altered.


Table created.


Index created.


Table altered.


Table created.


Table altered.


Table created.


Index created.


Table altered.


Table created.


Table altered.


Table altered.


Table altered.


Table altered.


Table altered.


Table altered.


Table altered.


Table altered.


Table altered.


Table altered.


Synonym created.


Synonym created.


Synonym created.


Synonym created.


Synonym created.


Synonym created.


Sequence created.


specify password for OE as parameter 1:

PROMPT password for SYS as parameter 2:

specify connect string as parameter 3:

Connected.

Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


View created.


View created.


Grant succeeded.


Session altered.


Package created.


Warning: Package Body created with compilation errors.


View created.


Package altered.


View altered.


Grant succeeded.


Trigger created.


Synonym created.


Grant succeeded.


Call completed.


Session altered.


Session altered.


Package created.


no rows selected


Synonym created.


Grant succeeded.


Package created.


no rows selected


Package body created.


no rows selected


Synonym created.


Grant succeeded.


Package created.


no rows selected


Package body created.


no rows selected


Grant succeeded.


Synonym created.


Package created.


no rows selected


Package body created.


no rows selected


Synonym created.


Grant succeeded.


specify password for OE as parameter 1:

PROMPT password for SYS as parameter 2:

specify connect string as parameter 3:


PL/SQL procedure successfully completed.

Connected.

Directory dropped.


Directory created.


Commit complete.

Connected.

Revoke succeeded.

Connected.
Connected.

Session altered.


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.


Call completed.


Call completed.


PL/SQL procedure successfully completed.

Connected.

Revoke succeeded.

Connected.
Connected.

Revoke succeeded.


Revoke succeeded.


Revoke succeeded.


Package dropped.


Package dropped.


Package dropped.


Package dropped.


Package dropped.


Trigger dropped.


View dropped.

Connected.

Commit complete.


specify Sample Schema version as parameter 1:

specify location for data and control files as parameter 2:

specify location for log files as parameter 3:

specify password for oe as parameter 4:

Setting FEEDBACK OFF for inserts

Setting FEEDBACK ON


1 row created.


1 row created.


Commit complete.


Table altered.


Session altered.


Session altered.


Commit complete.


View created.


View created.


View created.


View created.


View created.


View created.


Function created.


View created.


View created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Comment created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Index created.


Session altered.

...creating subschema OC in OE

Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type created.


Type body created.


Type created.


Type body created.


Type created.


Type body created.


Table created.


View created.


View created.


View created.


View created.


View created.


View created.


Trigger created.


Trigger created.


Commit complete.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


Type altered.


3 rows updated.


8 rows updated.


6 rows updated.


4 rows updated.


Commit complete.


Type body altered.


Type body altered.


Type body altered.
Commit complete.


Type body altered.


Type body altered.


Type body altered.

Type body altered.


Type body altered.


Type body altered.
Type body altered.


Type body altered.


Type body altered.

Type body altered.


Type body altered.


Type body altered.




PL/SQL procedure successfully completed.

Connected.

Synonym created.


Synonym created.


Synonym created.


Synonym created.


Synonym created.

SQL> exit
Disconnected from Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0
```

### Product Media Installation

* cd db-sample-schemas/product_media
* Password for OE: OE
* Perl is run in Git Bash
* SQL*Plus is run inside Docker Container

```
$ perl -p -i.bak -e 's#__SUB__CWD__#/opt/DMSTEX_dev/db-sample-schemas#g' *.sql *.dat
$ sqlplus 'system/PASSWORD@//localhost:1521/devpdb' @pm_main.sql PM USERS TEMP OE 'PASSWORD' /opt/DMSTEX_dev/db-sample-schemas/product_media/ logs/ /opt/DMSTEX_dev/db-sample-schemas/product_media/ //localhost:1521/devpdb

SQL*Plus: Release 21.0.0.0.0 - Production on Wed Sep 11 02:57:44 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Last Successful login time: Wed Sep 11 2024 02:39:15 +00:00

Connected to:
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0


specify password for PM as parameter 1:

specify default tablespeace for PM as parameter 2:

specify temporary tablespace for PM as parameter 3:

specify password for OE as parameter 4:

specify password for SYS as parameter 5:

specify directory path for the PM data files as parameter 6:

specify directory path for the PM load log files as parameter 7:

specify work directory path as parameter 8:

specify connect string as parameter 9:


User dropped.

old   1: CREATE USER pm IDENTIFIED BY &pass
new   1: CREATE USER pm IDENTIFIED BY PM

User created.

old   1: ALTER USER pm DEFAULT TABLESPACE &tbs QUOTA UNLIMITED ON &tbs
new   1: ALTER USER pm DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS

User altered.

old   1: ALTER USER pm TEMPORARY TABLESPACE &ttbs
new   1: ALTER USER pm TEMPORARY TABLESPACE TEMP

User altered.


Grant succeeded.


Grant succeeded.

Connected.

Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.

Connected.

Grant succeeded.

old   1: CREATE OR REPLACE DIRECTORY media_dir AS '&data_path'
new   1: CREATE OR REPLACE DIRECTORY media_dir AS '/opt/DMSTEX_dev/db-sample-schemas/product_media/'

Directory created.


Grant succeeded.

Connected.

Session altered.


Session altered.


Type created.


Type created.


Type created.


Table created.


Index created.


Table altered.


Commit complete.


SQL*Loader: Release 21.0.0.0.0 - Production on Wed Sep 11 02:57:48 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle and/or its affiliates.  All rights reserved.

Path used:      Conventional
Commit point reached - logical record count 15
Commit point reached - logical record count 16

Table PRINT_MEDIA:
  4 Rows successfully loaded.

Table TEXTDOCS_NESTEDTAB:
  12 Rows successfully loaded.

Check the log file:
  logs/pm_p_lob.log
for more information about the load.


PL/SQL procedure successfully completed.

SQL> exit
Disconnected from Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0
```
