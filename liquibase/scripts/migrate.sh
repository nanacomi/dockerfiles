#!/bin/bash

if [ -z "${TARGET_CHANGE_LOG}" ]; then
  echo "required: TARGET_CHANGE_LOG" >&2
  exit 1
fi

if [ -z "${HOST}" ]; then
  echo "required: HOST" >&2
  exit 1
fi

if [ -z "${PORT}" ]; then
  echo "required: PORT" >&2
  exit 1
fi

if [ -z "${USER}" ]; then
  echo "required: USER" >&2
  exit 1
fi

if [ -z "${PASSWORD}" ]; then
  echo "required: PASSWORD" >&2
  exit 1
fi

if [ -z "${SCHEME}" ]; then
  echo "required: SCHEME" >&2
  exit 1
fi

liquibase --driver=com.mysql.jdbc.Driver \
     --classpath=/opt/liquibase \
     --changeLogFile=${TARGET_CHANGE_LOG} \
     --url="jdbc:mysql://${HOST}:${PORT}/${SCHEME}" \
     --username=${USER} \
     --password=${PASSWORD} \
     migrate