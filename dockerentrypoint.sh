#!/bin/bash
# если есть переменная  CONSUL_HTTP_TOKEN_FILE
if [ -n "$CONSUL_HTTP_TOKEN_FILE" ]; then
  if [ -f "$CONSUL_HTTP_TOKEN_FILE" ]; then
    # Считываем токен из файла
    CONSUL_TOKEN=$(cat $CONSUL_HTTP_TOKEN_FILE)
    CONSUL_HTTP_TOKEN="$CONSUL_TOKEN"
    export CONSUL_HTTP_TOKEN
  fi
fi

exec /bin/registrator "$@"
