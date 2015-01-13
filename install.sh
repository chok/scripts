#/usr/bin/env sh
if [ -z $NAME ]
then
    echo "You must provide NAME"
    exit -1
fi

URL="https://raw.githubusercontent.com/chok/scripts/master"
BIN_PATH="/usr/bin"

FILE="${URL}/${NAME}"
BIN_FILE="${BIN_PATH}/${NAME}"

curl -o "${BIN_FILE}" "${FILE}"
chmod 755 "${BIN_FILE}"