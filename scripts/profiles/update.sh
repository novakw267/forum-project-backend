#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH\
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "profile": {
      "username": "'"${USERNAME}"'",
      "favorite_genre": "'"${FAVORITE_GENRE}"'",
      "favorite_band": "'"${FAVORITE_BAND}"'"
    }
  }'
  #\

echo
