API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles"
curl "${API}${URL_PATH}" \
  --include \
  --request POST\
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "profile": {
      "username": "'"${USERNAME}"'",
      "favorite_genre": "'"${FAVORITE_GENRE}"'",
      "favorite_band": "'"${FAVORITE_BAND}"'"
    }
  }'
echo
