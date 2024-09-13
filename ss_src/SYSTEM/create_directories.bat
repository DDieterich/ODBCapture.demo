
REM
REM  Create Directories for Windows
REM

md \opt\DMSTEX_dev\db-sample-schemas\\order_entry\
md \opt\DMSTEX_dev\db-sample-schemas\\order_entry\\2002\Sep
md \opt\DMSTEX_dev\db-sample-schemas\product_media\

REM set db_owner=oracle

REM icacls \opt\DMSTEX_dev\db-sample-schemas\\order_entry\ /grant %db_owner%:F /T
REM icacls \opt\DMSTEX_dev\db-sample-schemas\\order_entry\\2002\Sep /grant %db_owner%:F /T
REM icacls \opt\DMSTEX_dev\db-sample-schemas\product_media\ /grant %db_owner%:F /T

