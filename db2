#!/bin/bash
if [ "$#" -lt 1 ]
then
  echo "You must provide a user"
  exit -1
fi

if [ "$#" -lt 2 ]
then
  echo "You must provide a database"
  exit -1
fi

if [ "$#" -lt 3 ]
then
  echo "You must provide a path"
  exit -1
fi

if [ "$#" -ge 4 ]
then
  PASSWORD=$4
else
  PASSWORD=""
fi

USER=$1
DB=$2
BACKUP_PATH=$3
SQL_FILE="$DB-`date +%Y%m%d`.sql"

echo "Go to ${BACKUP_PATH}"
mkdir -p "${BACKUP_PATH}"
cd "${BACKUP_PATH}"

echo "Dump ${DB}..."
mysqldump -u${USER} -p${PASSWORD} -r${SQL_FILE} ${DB}

echo "Compress ${SQL_FILE}..."
bzip2 "${SQL_FILE}"

echo "...Done"

