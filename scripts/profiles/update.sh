#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH\
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "username": "'"${username}"'",
      "favorite_genre": "'"${favorite_genre}"'",
      "favorite_band": "'"${favorite_band}"'"
    }
  }'
  #\
  # --header "Authorization: Token token=$TOKEN"

echo
