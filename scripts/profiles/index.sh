#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles/${ID}"
curl "${API}${URL_PATH}" \
  --header "Authorization: Token token=$TOKEN" \
  --include \
  --request GET #\
echo
