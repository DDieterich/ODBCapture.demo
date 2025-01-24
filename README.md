
## Oracle's Copyright from the Original Source

```
Copyright (c) 2023 Oracle and/or its affiliates. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions rem of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
```

## Overview

This repository is a demonstration of using [ODBCapture](http://ODBCapture.org)
to capture the source code from Oracle's Sample Schema

Files/Folders              | Description
---------------------------|-------------
builds                     | Build Scripts and Logs
custom_data_load           | Special Data Load not handled by ODBCapture
grb_linked_install_scripts | Common Scripts Linked by Installation Scripts
grbsdo                     | ODBCapture Optional Spatial Data Option
grbsrc                     | ODBCapture Main Installation Scripts
grbxrep                    | ODBCapture XML DB Repository Objects/Data
orig_install               | Original Schema Installation Documentation
ss_grb                     | ODBCapture Configuration Data for Sample Schema
ss_src                     | Sample Schema Source Code (includes data)


## Installation Instructions

### Sample Schema Installation:

*Note:* Sample build scripts are available for different versions of the Oracle database in the `builds` folder.

1. Copy these folders to a location with SQL\*Plus and SQL\*Loader.
    * custom_data_load
    * grb_linked_install_scripts
    * ss_src
2. Install Source Code
    1. Move to Installation Folder: `cd ss_src`
    2. Connect to Database as SYS: `sqlplus SYS/PASSWORD@TNS_ALIAS as sysdba`
    3. Run Main Installation Script: `@install.sql "SYSTEM/PASSWORD@TNS_ALIAS"`
    4. Run installation reports: `@report_status.sql "SYSTEM/PASSWORD"`
    5. Exit from SQL*Plus: `exit`
    6. Review results from installation reports
9. Install Custom Loaded Data
    1. Move to Installation Folder: `cd ../custom_data_load`
    2. Connect to Database as SYS: `sqlplus SYS/PASSWORD@TNS_ALIAS as sysdba`
    3. Run Main Installation Script: `@install.sql "SYSTEM/PASSWORD@TNS_ALIAS"`
    4. Run the installation reports: `@report_status.sql "SYSTEM/PASSWORD"`
    5. Exit from SQL*Plus: `exit`
    6. Review results from installation reports

### ODBCapture Installation

*Note:* The sample build scripts in the `builds` folder include these installations.

For each of the following folders, repeat steps 1 and 2 above, in this order:
1. grbsrc
2. grbsdo
3. grbxrep
4. ss_grb
