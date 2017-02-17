API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/profiles"
curl "${API}${URL_PATH}" \
  --include \
  --request POST\
  --header "Content-Type: application/json" \
  --data '{
    "blog_template": {
      "title": "'"${title}"'",
      "subject": "'"${subject}"'",
      "body": "'"${body}"'"
    }
  }'
