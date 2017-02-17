#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/blog_templates/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH\
  --header "Content-Type: application/json" \
  --data '{
    "blog_template": {
      "blog_title": "'"${blog_title}"'",
      "subject": "'"${subject}"'",
      "body": "'"${body}"'"
    }
  }'
  #\
  # --header "Authorization: Token token=$TOKEN"

echo
