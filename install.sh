#/usr/bin/env sh
URL="https://raw.githubusercontent.com/chok/scripts/master"
BIN_PATH="/usr/bin"

FILE="${URL}/${NAME}"
BIN_FILE="${BIN_PATH}/${NAME}"

curl -o "${BIN_FILE}" "${URL}"
chmod 755 "${BIN_FILE}"