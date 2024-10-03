#!/bin/bash

#
# Build Script for Oracle Enterprise Edition 21.3
#
# Command Line Parameters
#  -) 1 - SYS Password
#  -) 2 - User Password
#

SYS_PASS="${1}"
USR_PASS="${2}"

# Copy stderr and stdout to log file
exec &> >(tee build.log)

########################################
# Confirm starting location
if ! ls "$(basename $0)"
then
   echo "This script must be run from its source location"
   exit -1
fi
HOME_DIR="${PWD}"
echo "Running from ${HOME_DIR}"

########################################
echo ""
echo "Setup Variables"
###
BUTIL_PATH="${HOME_DIR}/../util"
PDB_NAME='DEVPDB'
###
#HOST_NAME_PORT='localhost:1521'
#SYS_LOGIN="SYS/${SYS_PASS}@//${HOST_NAME_PORT}/EE213CDB as sysdba"
SYS_LOGIN="SYS/${SYS_PASS}@OnPrem_EE213CDB as sysdba"
PDB_SYS="SYS/${SYS_PASS}@OnPrem_EE213_${PDB_NAME} as sysdba"
PDB_SYSTEM="SYSTEM/${SYS_PASS}@OnPrem_EE213_${PDB_NAME}"

########################################
# Source the Build Functions
. ${BUTIL_PATH}/build_functions.sh

########################################

build_init
for BTYPE in 'ss_src' 'custom_data_load'
do
   clear_log_files "${BTYPE}"
   run_build  "${BTYPE}"
   run_report      "${BTYPE}" "${PDB_SYSTEM}"
   move_log_files  "${BTYPE}"
done
